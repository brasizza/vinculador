import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:vinculacao_empresa/app/core/utils/platform_info.dart';
import 'package:vinculacao_empresa/app/modules/vincular/controllers/vincular_controller.dart';

class CodeView extends StatelessWidget {
  final VincularController controller;
  final PlatformInfo info = Get.find<PlatformInfo>();

  CodeView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Mensagem vinculacao', //LocaleKeys.modulos_vinculacao_mensagem_inicial.tr,
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: 'EPOC ERP ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: ':',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(children: [
                TextSpan(
                  text: '1) ',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 10.sp),
                ),
                TextSpan(
                  text: 'Passo 1',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black,
                  ),
                ),
              ])),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(children: [
                TextSpan(
                  text: '2) ',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 10.sp),
                ),
                TextSpan(
                  // text: LocaleKeys.modulos_vinculacao_passo2.tr,
                  text: 'Passo2',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black,
                  ),
                ),
              ])),
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(() => Text(
              '${controller.code}',
              style: TextStyle(fontSize: 18.sp, color: Colors.black, fontWeight: FontWeight.bold),
            )),
        ElevatedButton(
          onPressed: () {
            controller.gerenateNumber();
          },
          child: const Text(
            // LocaleKeys.modulos_vinculacao_gerar_numero.tr,
            'Gerar numero',
          ),
        ),
        Text(
          'Mac',
          style: TextStyle(fontSize: 10.sp),
        ),
        Text(
          '${info.mac}',
          style: TextStyle(fontSize: 16.sp),
        ),
      ],
    );
  }
}
