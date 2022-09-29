import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinculacao_empresa/app/core/bindings/app_binding.dart';

class XpVicnulacao extends StatelessWidget {
  final String logotipo;
  final Color? corFundo;
  const XpVicnulacao({super.key, required this.logotipo, this.corFundo});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
    );
  }
}
