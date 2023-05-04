import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/registerwith_aadhar_page_controller.dart';

class RegisterwithAadharPageView
    extends GetView<RegisterwithAadharPageController> {
  const RegisterwithAadharPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterwithAadharPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RegisterwithAadharPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
