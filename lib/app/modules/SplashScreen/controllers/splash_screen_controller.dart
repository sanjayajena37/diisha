import 'dart:async';

import 'package:diisha/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  //TODO: Implement SplashScreenController

  final count = 0.obs;
  @override
  void onInit() {
     callResourceTimer();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  navigateToNextScreen(){
    Get.offAllNamed(Routes.LOGIN_PAGE);
  }
  void callResourceTimer() {
    Timer(Duration(seconds: 3), navigateToNextScreen);
  }

  void increment() => count.value++;
}
