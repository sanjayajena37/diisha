import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/otp_p_age_controller.dart';

class OtpPAgeView extends GetView<OtpPAgeController> {
  const OtpPAgeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OtpPAgeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OtpPAgeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
