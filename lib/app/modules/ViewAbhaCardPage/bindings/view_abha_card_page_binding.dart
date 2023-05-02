import 'package:get/get.dart';

import '../controllers/view_abha_card_page_controller.dart';

class ViewAbhaCardPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewAbhaCardPageController>(
      () => ViewAbhaCardPageController(),
    );
  }
}
