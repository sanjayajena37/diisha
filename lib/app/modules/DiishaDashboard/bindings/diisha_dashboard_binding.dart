import 'package:get/get.dart';

import '../controllers/diisha_dashboard_controller.dart';

class DiishaDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiishaDashboardController>(
      () => DiishaDashboardController(),
    );
  }
}
