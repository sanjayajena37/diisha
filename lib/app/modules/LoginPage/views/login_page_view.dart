import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
   LoginPageView({Key? key}) : super(key: key);
  LoginPageController controller = Get.find<LoginPageController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,

        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [



              Container(
                width: double.maxFinite,
                height: 290,
                child: Image.asset(
                  "assets/images/diishanewww.jpg",
                  width: double.maxFinite,
                  fit: BoxFit.contain,

                ),
              ),
              Center(child: Text("SIGN IN",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.teal),)),
              SizedBox(height: 30,),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Icon(Icons.person,size: 30,color: Colors.teal,),
                  ),

                  Expanded(
                    child: formFieldUser(
                      0,
                        ("User ID/ Mobile No")
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Icon(Icons.lock,size: 30,color: Colors.teal,),
                  ),

                  Expanded(
                    child: formFieldPass(
                        1,
                        ("Password")
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.10,),

              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 40,
                width: 200,
                child: Card( shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30) ) ,
                    elevation: 10,
                    color: Colors.teal,
                    child: Center(
                      child: Text("Log in",style: TextStyle(fontSize: 14,
                          fontWeight: FontWeight.bold,color: Colors.white
                      ),),
                    )),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 40,
                width: 200,
                child: Card( shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30) ) ,
                    elevation: 10,
                    color: Colors.teal,
                    child: Center(
                      child: Text("Log in with OTP",style: TextStyle(fontSize: 14,
                          fontWeight: FontWeight.bold,color: Colors.white
                      ),),
                    )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  //mainAxisSize: double.maxFinite,
                  children: [
                    Image.asset(
                      "assets/images/logo diisha.png",
                      //height: 150,
                     width: 150,
                     // width: double.maxFinite,
                      //fit: BoxFit.contain,

                    ),
                    SizedBox(height: 005,),
                    Image.asset(
                      "assets/images/Ehealthlogo.png",
                      //height: 100,
                      width: 200,
                      // width: double.maxFinite,
                      //fit: BoxFit.contain,

                    ),
                  ],
                ),
              ),



            ],

          ),
        )
    );
  }
  Widget formFieldUser(
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
                  controller: controller.loginController,
                  placeholder: hint,
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 14),
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
                    //suffixIcon: Icon(Icons.phone),
                    // border: InputBorder.none,
                    // counterText: "",
                    // hintText: hint,
                    // hintStyle: TextStyle(
                    //     color: Colors.grey, fontSize: AppData.hinttextSize),
                  ),


                ),
              )
            ],
          ),
        ),
      ),
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
                   controller: controller.passController,
                   placeholder: hint,
                   padding: EdgeInsets.symmetric(horizontal: 6, vertical: 14),
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
                     //suffixIcon: Icon(Icons.phone),
                     // border: InputBorder.none,
                     // counterText: "",
                     // hintText: hint,
                     // hintStyle: TextStyle(
                     //     color: Colors.grey, fontSize: AppData.hinttextSize),
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
