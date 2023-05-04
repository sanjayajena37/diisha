import 'package:get/get.dart';

class DiishaDashboardController extends GetxController {
  //TODO: Implement DiishaDashboardController
  int selectedindex=0;
  final count = 0.obs;

  @override
  void onInit() {
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

  void increment() => count.value++;
  refreshUi()
  {
    update(['abhaCard']);
  }
}
