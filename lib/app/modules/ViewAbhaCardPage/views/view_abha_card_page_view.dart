import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/view_abha_card_page_controller.dart';

class ViewAbhaCardPageView extends GetView<ViewAbhaCardPageController> {
  const ViewAbhaCardPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.teal,
      // appBar: AppBar(
      //   title: const Text('ViewAbhaCardPageView'),
      //   centerTitle: true,
      // ),
      bottomNavigationBar: Container(
        height:MediaQuery.of(context).size.height*0.12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

             BottomNavigationBar(
                // currentIndex: selectedIndex,
                // selectedItemColor:Colors.yellow  ,
                showUnselectedLabels: true,
                //fixedColor: Colors.deepPurple,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.black,
                backgroundColor:Colors.teal,
                iconSize: 20,
                onTap: (index) {
                  switch (index) {
                    case 0:
                      print('Navigate to profile');
                      break;
                    case 1:
                      print('Navigate to profile');
                      // Get.toNamed(
                      //   //Routes.PAYMENT
                      //
                      //   //Routes.LOGIN_SCREEN,
                      //
                      //   Routes.ADD_TO_CART,
                      // );
                      break;
                    case 2:
                      print('Navigate to profile');
                      // Get.toNamed(
                      //   Routes
                      //       .PROFILE,
                      // );
                      break;
                  }
                },
                selectedFontSize: 9,
                unselectedFontSize: 9,
                type: BottomNavigationBarType.fixed,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home,color: Colors.white,size: 25,),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.drive_folder_upload,color: Colors.white,size: 25,),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_cart,color: Colors.white,
                        size: 25),
                    label: '',
                    // backgroundColor: AppData.orangeColor
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,color: Colors.white,
                   size: 25, ),///
                    label: '',
                    // backgroundColor: AppData.orangeColor
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.chat,color: Colors.white,
                        size: 25,
                    ),
                    label: '',
                    // backgroundColor: AppData.orangeColor
                  ),

                ],
              ),

             //SizedBox(height: 10,),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Text("DEVELOPED BY :",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      Image.asset("assets/images/logo diisha.png",height: 30,width: 100,),
                      SizedBox(width: 20,),
                      Image.asset("assets/images/Ehealthlogo.png",height: 30,width: 100,),
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Container(
                color: Colors.white,

                child: Row(
                  children: [
                    Icon(Icons.arrow_back_rounded,),
                    SizedBox(width: 20,),
                    Text("ABHA REGISTRATION",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text("ABHA REGISTRATION",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                Spacer(),
                Icon(Icons.arrow_back_rounded,),
                Text("ABHA REGISTRATION",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
