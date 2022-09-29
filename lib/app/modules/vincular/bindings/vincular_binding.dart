import 'package:get/get.dart';
import 'package:vinculacao_empresa/app/core/socket/socket_controller.dart';
import 'package:vinculacao_empresa/app/data/services/empresa/empresa_service.dart';

import '../controllers/vincular_controller.dart';

class VincularBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<VincularController>(
      VincularController(
        socketController: Get.find<SocketController>(),
        service: Get.find<EmpresaService>(),
      ),
    );
  }
}
