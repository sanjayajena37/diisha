import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../widgets/MySeparator.dart';
import '../../../../widgets/OtpFormField.dart';
import '../../../routes/app_pages.dart';
import '../controllers/otp_p_age_controller.dart';

class OtpPAgeView extends GetView<OtpPAgeController> {
  const OtpPAgeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('OtpPAgeView'),
      //   centerTitle: true,
      // ),
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "ABHA REGISTRATION",
                      style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height * 0.25,

                //height: double.maxFinite,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
                      child: Text(
                        'Creating ABHA (Health ID)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 45,
                          child: Image.asset('assets/images/aadhar.jpg'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Using Aadhar',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 8.0),
                          child: Text(
                            'Step 2',
                            //textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 8.0),
                          child: Text(
                            'Enter OTP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: 10,),
                    OtpFormField(
                      numberOfFields: 6,
                      onOtpEntered: (List<String> otpValues) {
                        print('OTP entered: $otpValues');
                        // do something with the OTP values, such as verifying them
                      },
                    ),


                    // Padding(
                    //                     //   padding: const EdgeInsets.only(left: 18.0,right: 18),
                    //                     //   child: TextField(
                    //                     //     cursorColor: Colors.teal,
                    //                     //     obscureText: true,
                    //                     //     decoration: InputDecoration(
                    //                     //      // labelText: 'Password',
                    //                     //       hintText: 'Enter your OTP',
                    //                     //       // other decoration properties
                    //                     //     ),
                    //                     //     //
                    //                     //   ),
                    //                     // ),

                    // Text("[ _   _    _   _   _   _   _   _   _ ]",style: TextStyle(fontSize: 20),),
                    Container()
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Get.toNamed(
                  Routes
                      .ABHA_CONGRATULATION_PAGE,
                );
              },
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 40,
                width: 200,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 10,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal),
                      ),
                    )),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              'Not Received OTP ?',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),

            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                // Get.toNamed(
                //   Routes
                //       .ABHA_CONGRATULATION_PAGE,
                // );
              },
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 40,
                width: 200,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    elevation: 10,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        "Resend OTP",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal),
                      ),
                    )),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Image.asset('assets/images/abhacard233.jpg'),
            ),
            // Container(
            //     height: 350,
            //     width: 250,
            //     child: Image.asset(
            //       'assets/images/',
            //       color: Colors.white,
            //     ))
          ],
        ),
      ),
    );
  }
}
