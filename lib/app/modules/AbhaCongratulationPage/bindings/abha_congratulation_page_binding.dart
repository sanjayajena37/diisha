import 'package:get/get.dart';

import '../controllers/abha_congratulation_page_controller.dart';

class AbhaCongratulationPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AbhaCongratulationPageController>(
      () => AbhaCongratulationPageController(),
    );
  }
}
