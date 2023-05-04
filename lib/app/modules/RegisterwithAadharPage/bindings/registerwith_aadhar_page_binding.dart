import 'package:get/get.dart';

import '../controllers/registerwith_aadhar_page_controller.dart';

class RegisterwithAadharPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterwithAadharPageController>(
      () => RegisterwithAadharPageController(),
    );
  }
}
