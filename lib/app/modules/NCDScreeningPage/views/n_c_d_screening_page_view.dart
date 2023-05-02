import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/n_c_d_screening_page_controller.dart';

class NCDScreeningPageView extends GetView<NCDScreeningPageController> {
  const NCDScreeningPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NCDScreeningPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NCDScreeningPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
