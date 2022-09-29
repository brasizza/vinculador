import 'package:network_info_plus/network_info_plus.dart';
import 'package:vinculacao_empresa/app/core/utils/utils.dart';

class PlatformInfo {
  String? mac = '';
  void init() async {
    try {
      final info = NetworkInfo();
      String? macInfo = await info.getWifiBSSID();
      if (macInfo == null || macInfo == '02:00:00:00:00:00') {
        String numeros = DateTime.now().millisecondsSinceEpoch.toString();
        mac = Utils.generateMac(numeros);
      } else {
        mac = macInfo;
      }
    } catch (e) {
      String numeros = DateTime.now().millisecondsSinceEpoch.toString();
      mac = Utils.generateMac(numeros);
    }
  }
}
