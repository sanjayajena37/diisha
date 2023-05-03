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
                    icon: InkWell(
                      onTap: () {
                        Get.toNamed(
                          Routes
                              .N_C_D_SCREENING_PAGE,
                        );
                      },
                      child: Icon(
                        Icons.chat,color: Colors.white,
                          size: 25,
                      ),
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
                    Text("ABHA REGISTRATION",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 16),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
                      child: Center(
                        child: Text("MY ABHA",style: TextStyle(
                          color: Colors.teal,fontWeight: FontWeight.bold,),),
                      )),
                  Spacer(),
                  Icon(Icons.qr_code,color: Colors.white,size: 30,),
                  SizedBox(width: 8,),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
                      child: Center(
                        child: Text("View QR",style: TextStyle(
                          color: Colors.teal,fontWeight: FontWeight.bold,),),
                      )),
                ],
              ),
            ),
           SizedBox(height: 20,),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15.0),
             child: Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(05), color: Colors.white,),
               height: 218,
                 width: double.maxFinite,

                 child: Column(
                   children: [
                     SizedBox(height: 10,),
                     Image.asset("assets/images/userdisha1.png",height: 70,width: 70,),
                     SizedBox(height: 7,),
                     Text("Mr.  Jatin Kumar",style: TextStyle(fontWeight: FontWeight.bold),),
                     SizedBox(height: 7,),

                     Text("AGE:25,Male"),
                     SizedBox(height: 7,),

                     Text("Mobile No: 9090990909"),
                     SizedBox(height: 7,),

                     Text("Bbsr, Khordha,India"),
                     SizedBox(height: 7,),

                     Text("ABHA ID: abcdefdfsv124324"),
                     SizedBox(height: 10,),

                   ],
                 ),

             ),
           ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 12.0),
             child: Card(



               child: Padding(
                 padding: const EdgeInsets.only(top: 4.0,bottom: 5,left: 5,right: 3),
                 child: Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(05), color: Colors.white,
                       border: Border.all(color: Colors.blueAccent)),
                   height: 200,
                   width: double.maxFinite,


                     child: Center(
                       child: Column(
                         children: [

                           Container(
                             color: Colors.blueAccent,
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 8.0),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Image.asset("assets/images/ndhm-logo.png",
                                     height: 50,width: 50,color: Colors.white,),

                                   Image.asset("assets/images/ndhm-logo.png",
                                     height: 50,width: 50,color: Colors.white,),

                                 ],
                               ),
                             ),
                           ),
                           SizedBox(height: 10,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Image.asset("assets/abhacard.jpg",height: 90,width: 80,),
                               Padding(
                                 padding: const EdgeInsets.only(left: 8.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     SizedBox(height: 7,),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Text("Mr.Jatin Kumar",style: TextStyle(
                                             fontWeight: FontWeight.bold,fontSize: 14),
                                             textAlign:TextAlign.start),
                                       ],
                                     ),
                                     SizedBox(height: 5,),

                                     Text("AGE: 25",),
                                     Text("Gender: Male",),
                                     SizedBox(height: 5,),

                                     Text("Mobile : 9090990909"),
                                     SizedBox(height: 5,),

                                     Text("Bbsr, Khordha,India"),
                                     SizedBox(height: 5,),

                                     Text("ABHA ID: abcdefdfsv124"),
                                     SizedBox(height: 10,),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 15.0),
                                 child: Container(
                                   height: 90,
                                   width: 90,
                                   decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                                   child: Icon(
                                     Icons.qr_code_2,color: Colors.black
                                     ,
                                     size: 90,
                                   ),
                                 ),
                               ),


                             ],
                           ),




                         ],
                       ),
                     ),

                 ),
               ),
             ),
           ),




            SizedBox(height:30),



            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
              height: 40,
              width: 200,
              child: Card( shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30) ) ,
                  elevation: 10,
                  color: Colors.white,
                  child: Center(
                    child: Text("Close",style: TextStyle(fontSize: 14,
                        fontWeight: FontWeight.bold,color: Colors.teal
                    ),),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
