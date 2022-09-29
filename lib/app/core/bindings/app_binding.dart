import 'package:get/get.dart';
import 'package:vinculacao_empresa/app/core/socket/socket_controller.dart';
import 'package:vinculacao_empresa/app/core/utils/platform_info.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<SocketController>(SocketController()..init(), permanent: true);
    Get.put<PlatformInfo>(PlatformInfo()..init(), permanent: true);
  }
}
