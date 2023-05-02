import 'package:get/get.dart';

import '../controllers/n_c_d_screening_page_controller.dart';

class NCDScreeningPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NCDScreeningPageController>(
      () => NCDScreeningPageController(),
    );
  }
}
