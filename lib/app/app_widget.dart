import 'package:flutter/material.dart';
import 'package:vinculacao_empresa/app/modules/vinculacao/view/vinculacao_view.dart';

class XpVicnulacao extends StatelessWidget {
  const XpVicnulacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VinculacaoView(),
    );
  }
}
