import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/abha_congratulation_page_controller.dart';

class AbhaCongratulationPageView
    extends GetView<AbhaCongratulationPageController> {
  const AbhaCongratulationPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('AbhaCongratulationPageView'),
      //   centerTitle: true,
      // ),
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 30.0),
              child: Text(
                '"CONGRATULATIONS"',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                //height:MediaQuery.of(context).size.height*0.3,
                height:( Get.height - Get.statusBarHeight- Get.bottomBarHeight)*0.3,
                width: Get.width*0.93,
                color: Colors.white,
                //height: double.maxFinite,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
                      child: Text(
                        'Created ABHA (Health ID)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height:( Get.height - Get.statusBarHeight- Get.bottomBarHeight)*0.09,
                          width: 45,
                          child: Image.asset('assets/images/aadhar.jpg'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Using Aadhar',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ( Get.height - Get.statusBarHeight- Get.bottomBarHeight)*0.02,
                    ),
                    Text(
                      'Thank You !',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    Text(
                      'ABHA ID Created Successfully and Details',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                    Text(
                      'Sent on WhatsApp',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            SizedBox(height: 15,),
            InkWell(
              onTap: () {
                // Get.toNamed(
                //   Routes
                //       .ABHA_CONGRATULATION_PAGE,
                // );
              },

              child: InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes
                        .VIEW_ABHA_CARD_PAGE,
                  );
                },
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  height:( Get.height - Get.statusBarHeight- Get.bottomBarHeight)*0.08,
                  width: Get.width*0.5,
                  child: Card( shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30) ) ,
                      elevation: 10,
                      color: Colors.white,
                      child: Center(
                        child: Text("VIEW ABHA CARD",style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.bold,color: Colors.teal
                        ),),
                      )),
                ),
              ),
            ),

            SizedBox(height: 15,),
            InkWell(
              onTap: () {
                // Get.toNamed(
                //   Routes
                //       .ABHA_CONGRATULATION_PAGE,
                // );
              },

              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height:( Get.height - Get.statusBarHeight- Get.bottomBarHeight)*0.07,
                width: Get.width*0.5,
                child: Card( shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30) ) ,
                    elevation: 10,
                    color: Colors.white,
                    child: Center(
                      child: Text("CLOSE",style: TextStyle(fontSize: 14,
                          fontWeight: FontWeight.bold,color: Colors.teal
                      ),),
                    )),
              ),
            ),

            Image.asset('assets/images/ndhm-logo.png',color: Colors.white,height: 200,width: 200,)

          ],
        ),
      ),
    );
  }

}
