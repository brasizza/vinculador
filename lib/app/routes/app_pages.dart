import 'package:get/route_manager.dart';
import 'package:vinculacao_empresa/app/modules/vincular/bindings/vincular_binding.dart';
import 'package:vinculacao_empresa/app/modules/vincular/vincular_view.dart';

part './app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const VincularView(),
      binding: VincularBinding(),
    ),
  ];
}
