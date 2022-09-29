import 'package:epoc3android/app/core/utils/consts.dart';
import 'package:epoc3android/app/core/utils/utils.dart';
import 'package:epoc3android/app/modules/vincular/views/components/code_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'controllers/vincular_controller.dart';

class VincularView extends GetView<VincularController> {
  const VincularView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Consts.azulEpoc,
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Utils.findAsset('background_splash.png'),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
              child: Card(
                margin: context.isTablet ? EdgeInsets.symmetric(horizontal: 0.2.sh) : null,
                color: Colors.white.withOpacity(0.7),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/logo_epoc.png',
                            width: ScreenUtil().setWidth(100),
                          ),
                        ],
                      ),

                      CodeView(controller: controller),
                      // Obx(() => Visibility(
                      //       visible: controller.empresa == null,
                      //       replacement: const VinculacaoPage(),
                      //       child: CodeView(controller: controller),
                      //     )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
