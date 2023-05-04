import 'package:get/get.dart';

import '../controllers/otp_p_age_controller.dart';

class OtpPAgeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpPAgeController>(
      () => OtpPAgeController(),
    );
  }
}
