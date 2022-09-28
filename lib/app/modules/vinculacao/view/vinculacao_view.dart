import 'package:flutter/material.dart';

class VinculacaoView extends StatelessWidget {
  const VinculacaoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Pronto! Agora basta entrar na sua retaguarda! ',
                      style: TextStyle(),
                    ),
                    TextSpan(text: 'EPOC ERP ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: ':',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(children: [
                      TextSpan(
                        text: '1) ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text: 'Vá em EMPRESA > EQUIPAMENTOS ',
                          style: TextStyle(
                            fontSize: 12,
                          )),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(children: [
                      TextSpan(
                        text: '2) ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                          text: 'Clique no botão 📢  e digite o código abaixo:',
                          style: TextStyle(
                            fontSize: 12,
                          )),
                    ])),
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'aa',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () async {
                // await controller.cancelarCodigo();
              },
              child: const Text('Cancelar'),
            ),
          ),
        ],
      ),
    );
  }
}
