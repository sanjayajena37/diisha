import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/registerwith_aadhar_page_controller.dart';

class RegisterwithAadharPageView
    extends GetView<RegisterwithAadharPageController> {
   RegisterwithAadharPageView({Key? key}) : super(key: key);

  @override
  bool _rememberMe = true;
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.teal,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Create Ayushman Bharat Health \n "
                  "Account\n"
                  "ABHA(HEALTH ID) Card",


                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),
                    textAlign:TextAlign.center,),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                  child: Image.asset("assets/images/slider42.png", height:MediaQuery.of(context).size.height*0.3,
                width:MediaQuery.of(context).size.width*0.90,)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  //height:MediaQuery.of(context).size.height*0.3,
                  height: 200,
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
                            height: 30,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("Step 1",style: TextStyle(fontWeight:FontWeight.bold),),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Enter Aadhar Card Number here',
                        style: TextStyle(

                            fontSize: 16,
                            color: Colors.black),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: formFieldPass(
                            1,
                            ("* * * * * * * "),

                        ),
                      ),



                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes
                        .OTP_P_AGE,
                  );
                },
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  height: 40,
                  width: 200,
                  child: Card( shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30) ) ,
                      elevation: 10,
                      color: Colors.white,
                      child: Center(
                        child: Text("Proceed",style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.bold,color: Colors.teal
                        ),),
                      )),
                ),
              ),
              SizedBox(height: 20,),
              Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {

                    },
                  ),
                  Text("I Agree to give the necessary permissions to Diisha \n "
                      "eHealthSystem to set up my ABHA Health Locker\n",



                    style: TextStyle(fontSize: 14,color: Colors.white),
                    textAlign:TextAlign.center,),
                ],
              ),


            ],
          ),
        ),
      )

    );
  }
  Widget formFieldPass(
      int index,
      String hint,
      ) {
    return Padding(
      //padding: const EdgeInsets.all(8.0),
      padding:
      const EdgeInsets.only(top: 0.0, left: 20.0, right: 20.0, bottom: 0.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey, width: 1)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Row(
            children: <Widget>[
              new Expanded(
                child: CupertinoTextField(
                  enableSuggestions: true,
                  //enabled: widget.isConfirmPage ? false : true,
                  controller: controller.congController,
                  placeholder: hint,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 14),
                  style: TextStyle(
                      color: Colors.grey, fontSize:20),
                  // focusNode: currentfn,
                  cursorColor: Colors.teal,
                  textInputAction: TextInputAction.next,
                  //maxLength: 10,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                       RegExp("[0-9 ]")),
                   ],

                  decoration: BoxDecoration(
                  ),


                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
