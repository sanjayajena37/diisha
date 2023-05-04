import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/abha_congratulation_page_controller.dart';

class AbhaCongratulationPageView
    extends GetView<AbhaCongratulationPageController> {
  const AbhaCongratulationPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AbhaCongratulationPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AbhaCongratulationPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
