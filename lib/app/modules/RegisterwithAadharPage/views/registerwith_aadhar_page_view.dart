import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/registerwith_aadhar_page_controller.dart';

class RegisterwithAadharPageView
    extends GetView<RegisterwithAadharPageController> {
  const RegisterwithAadharPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.teal,

      body: SafeArea(
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
                    Text("Step 1",style: TextStyle(fontWeight:FontWeight.bold),),
                    SizedBox(
                      height: 30,
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
                          ("***************"),

                      ),
                    ),

                  ],
                ),
              ),
            ),

          ],
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
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 14),
                  style: TextStyle(
                      color: Colors.grey, fontSize:14),
                  // focusNode: currentfn,
                  cursorColor: Colors.teal,
                  textInputAction: TextInputAction.next,
                  //maxLength: 10,
                  keyboardType: TextInputType.text,
                  /* inputFormatters: [
                    FilteringTextInputFormatter.allow(
                        RegExp("[0-9 ]")),
                  ],*/

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
