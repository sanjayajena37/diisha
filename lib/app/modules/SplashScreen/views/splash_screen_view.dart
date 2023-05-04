import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
   SplashScreenView({Key? key}) : super(key: key);
  SplashScreenController controller = Get.find<SplashScreenController>();
  @override
  Widget build(BuildContext context) {
     return Scaffold(

       backgroundColor: Colors.teal,
      // appBar: AppBar(
      //   title: Text('SplashScreenView'),
      //   centerTitle: true,
      // ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center
                ,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                  ),
                ],
              ),
              SizedBox(height: 2,),
              Image.asset(
                "assets/images/banner1.jpg",
                height: ( Get.height - Get.statusBarHeight- Get.bottomBarHeight)*0.3,
                width: double.maxFinite,
                fit: BoxFit.contain,

              ),
              SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Digital Innovations \n "
                      "Interventions "
                      "for \n"
                      "Sustainable Healthtech \n"
                      "Action",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),
                  textAlign:TextAlign.center,),
                ],
              ),
              SizedBox(height: 1,),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.26,
                child: Image.asset(
                  "assets/images/Disha.png",
                  height: MediaQuery.of(context).size.height * 0.26,
                  fit: BoxFit.contain,
                  //width: double.maxFinite,
                ),
              ),

            ],

          ),
        )
    );
  }
}
