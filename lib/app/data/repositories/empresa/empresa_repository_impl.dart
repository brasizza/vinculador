import 'dart:developer';

import 'package:vinculacao_empresa/app/core/exceptions/epoc_exception.dart';
import 'package:vinculacao_empresa/app/core/rest/rest_client.dart';
import 'package:vinculacao_empresa/app/data/models/empresa_model.dart';
import 'package:vinculacao_empresa/app/data/models/hash_model.dart';

import './empresa_repository.dart';

class EmpresaRepositoryImpl implements EmpresaRepository {
  final RestClient _rest;
  EmpresaRepositoryImpl({
    required RestClient rest,
  }) : _rest = rest;

  @override
  Future<EmpresaModel?> getEmpresa({required String cnpj, required String url}) async {
    try {
      final retorno = await _rest.post(url, data: {'cnpj': cnpj});
      if (retorno.statusCode != 200) {
        throw EpocException('Falha ao recuperar a empresa');
      }
      if (retorno.data != null) {
        return EmpresaModel.fromMap(retorno.data);
      }
      return null;
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
      throw EpocException(e.toString(), isTimeout: false, stack: s);
    }
  }

  @override
  Future<String?> gerarHash({required HashModel hashModel}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> vincularHost({required String urlVincular, required Map<String, dynamic> dados}) async {
    final vincular = await _rest.post(
      urlVincular,
      data: dados,
      contentType: 'application/x-www-form-urlencoded',
      requestType: 'text/plain',
    );

    if (vincular.statusCode == 200) {
      if (vincular.data['status'] == 1) {
        return true;
      }
    }

    return false;
  }

  @override
  Future<String?> gerarToken({required String url, required Map<String, dynamic> dados}) async {
    final gerarToken = await _rest.post(
      url,
      data: dados,
      contentType: 'application/x-www-form-urlencoded',
      requestType: 'text/plain',
    );

    if (gerarToken.statusCode == 200) {
      if (gerarToken.data['status'] == 1) {
        return gerarToken.data['data'];
      } else {
        throw EpocException(gerarToken.data['msg']);
      }
    }
    throw EpocException('Falha ao gerar o token');
  }
}
