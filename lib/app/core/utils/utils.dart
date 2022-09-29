import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class Utils {
  Utils._();

  static mostrarSnack({required title, required text, Color cor = Colors.blue}) {
    Get.snackbar(
      title,
      text,
      backgroundColor: cor,
      colorText: cor.computeLuminance() > 0.5 ? Colors.black : Colors.white,
    );
  }

  static String stringToMd5(String text) {
    return md5.convert(utf8.encode(text)).toString();
  }

  static showLoading({texto = ''}) {
    if (texto == '') {
      texto = 'Carregando...';
    }
    Widget alert = WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: AlertDialog(
        content: Row(
          children: [
            const CircularProgressIndicator.adaptive(),
            Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  texto,
                  style: TextStyle(
                    fontSize: 10.sp,
                  ),
                  textScaleFactor: 1,
                  softWrap: true,
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                )),
          ],
        ),
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: Get.context!,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  static String generateMac(String seed) {
    Random rnd = Random(
      int.parse(seed.substring(1, (seed.length < 10) ? seed.length : 10)),
    );
    const chars = 'ABCDEF1234567890';
    String generatedString = String.fromCharCodes(Iterable.generate(12, (_) => chars.codeUnitAt(rnd.nextInt(chars.length))));
    String mac = '';
    for (var i = 0; i < generatedString.length; i++) {
      if (i % 2 == 0 && i != 0) {
        mac += ':';
      }
      mac += generatedString[i];
    }
    return mac;
  }

  static bool isBase64(String texto) {
    RegExp base64 = RegExp(r'^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=|[A-Za-z0-9+\/]{4})$');
    return base64.hasMatch(texto);
  }

  static String base64ToStringBig(String encoded) {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String decoded = stringToBase64.decode(encoded); // username:password
    return decoded;
  }
}
