import 'package:get/get.dart';

class ViewAbhaCardPageController extends GetxController {
  //TODO: Implement ViewAbhaCardPageController
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
