// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer' as dev show log;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinculacao_empresa/app/core/socket/socket_controller.dart';
import 'package:vinculacao_empresa/app/core/utils/platform_info.dart';
import 'package:vinculacao_empresa/app/data/models/ativacao_model.dart';
import 'package:vinculacao_empresa/app/data/models/empresa_model.dart';
import 'package:vinculacao_empresa/app/data/services/empresa/empresa_service.dart';
import 'package:vinculacao_empresa/app/modules/vincular/controllers/vinculacao_controller.dart';

import '../../../core/utils/utils.dart';

class VincularController extends GetxController {
  final SocketController _socketController;
  final EmpresaService _service;

  final _empresa = Rxn<EmpresaModel>();
  EmpresaModel? get empresa => _empresa.value;
  VincularController({
    required SocketController socketController,
    required EmpresaService service,
  })  : _socketController = socketController,
        _service = service;

  final maxNumbers = 6;
  final _code = ''.obs;

  get code => _code.value;
  final codeDuration = 30;

  @override
  void onInit() async {
    super.onInit();

    gerenateNumber();
  }

  void gerenateNumber() {
    String generated = '';
    for (int i = 0; i < maxNumbers; i++) {
      generated += Random().nextInt(9).toString();
    }
    if (code != '') {
      _socketController.clearListeners();
      _socketController.removeChannel('monitor_$code');
      _socketController.reconnect();
    }
    _socketController.addChannel('monitor_$generated', (data) async {
      if (data != null) {
        try {
          Utils.showLoading();
          final ativacao = AtivacaoModel.fromMap(data);

          final empresaApi = await _service.getEmpresa(cnpj: ativacao.cnpj);

          if (empresaApi != null) {
            empresaApi.mac = Get.find<PlatformInfo>().mac;
          }
          _empresa(empresaApi);
          Get.put<VinculacaoController>(
            VinculacaoController()
              ..ativacao = ativacao
              ..empresa = empresa!,
          );
          _socketController.removeChannel('monitor_$code');
        } catch (e, s) {
          Get.until((route) => !Get.isDialogOpen!);

          dev.log(e.toString(), error: e, stackTrace: s);
          Utils.mostrarSnack(
            title: 'OPS!',
            text: 'Falha ao recuperar a empresa',
            cor: Colors.red,
          );
        }
      }
    });
    _code(generated);
  }
}
