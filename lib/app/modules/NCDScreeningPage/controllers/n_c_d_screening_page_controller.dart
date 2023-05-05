import 'package:get/get.dart';

class NCDScreeningPageController extends GetxController {
  //TODO: Implement NCDScreeningPageController
List<Map<String,String>>user=[{"name":"Jatin Kumar","gender":"Male","age":"25"},
  {"name":" Anirudh Behera","gender":"Male","age":"25"},
  {"name":" Rashmita Behera","gender":"Female","age":"24"},
  {"name":" ABC","gender":"Female","age":"25"},
  {"name":" Suvam nayak","gender":"Male","age":"22"},
  {"name":" Anam Das","gender":"Male","age":"34"},
  {"name":" Naba Ratna","gender":"Male","age":"38"},
  {"name":" Dahi Bara","gender":"Male","age":"23"},
  {"name":" Dasaratha","gender":"Male","age":"56"},
  {"name":" XYZ","gender":"Male","age":"20"},





];
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
}
