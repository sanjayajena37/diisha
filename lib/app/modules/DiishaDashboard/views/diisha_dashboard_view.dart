import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/diisha_dashboard_controller.dart';

class DiishaDashboardView extends GetView<DiishaDashboardController> {
   DiishaDashboardView({Key? key}) : super(key: key);
  @override
  List<String> imageSliders = [
    "assets/images/slider1.jpg",
    "assets/images/slider2.jpg",
    "assets/images/slider3.jpg",
  ];
  TextEditingController nameController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('DiishaDashboardView'),
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
                backgroundColor:Colors.white,
                iconSize: 20,
                onTap: (index) {
                  switch (index) {
                    case 0:
                      controller.selectedindex =0;
                      controller.refreshUi();

                      print('Navigate to profile');
                      break;
                    case 1:

                      controller.selectedindex =1;
                      controller.refreshUi();
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
                      controller.selectedindex =2;
                      controller.refreshUi();
                      print('Navigate to profile');
                      // Get.toNamed(
                      //   Routes
                      //       .PROFILE,
                      // );
                      break;
                    case 3:
                      controller.selectedindex =3;
                      controller.refreshUi();
                      print('Navigate to profile');
                      // Get.toNamed(
                      //   Routes
                      //       .PROFILE,
                      // );
                      break;
                    case 4:
                      controller.selectedindex =4;
                      controller.refreshUi();
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
                    icon:  Image.asset("assets/images/home.png",height: 27,width: 50,),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/images/upload.png",height: 27,width: 50,),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon:Image.asset("assets/images/shopping-cart.png",height: 27,width: 50,),
                    label: '',
                    // backgroundColor: AppData.orangeColor
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset("assets/images/customer-service.png",height: 27,width: 50,),///
                    label: '',
                    // backgroundColor: AppData.orangeColor
                  ),
                  BottomNavigationBarItem(
                    icon: InkWell(
                      // onTap: () {
                      //   Get.toNamed(
                      //     Routes
                      //         .N_C_D_SCREENING_PAGE,
                      //   );
                      // },
                      child:Image.asset("assets/images/chat.png",height: 27,width: 50,),
                    ),
                    label: '',
                    // backgroundColor: AppData.orangeColor
                  ),

                ],
              ),

              //SizedBox(height: 10,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  //color: Colors.white,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Container(

                  height: 40,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: Colors.grey,
                      shape: BoxShape.rectangle,
                  ),
                  child: TextField(
                    controller: nameController,
                    cursorColor: Colors.teal,
                    //textAlign: TextAlign. center,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15.0, right: 15.0,top: 10),
                      suffixIcon: Icon(Icons.search,color: Colors.teal,),
                      hintText: 'Search',
                      hintStyle: TextStyle(fontSize: 16),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2,),
              CarouselSlider(
                options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    pageSnapping: true,
                    viewportFraction: 1,
                    scrollDirection: Axis.horizontal,
                    disableCenter: true,
                    autoPlayInterval: Duration(seconds: 5),
                    //autoPlayAnimationDuration: Duration(seconds: 90),
                    pauseAutoPlayInFiniteScroll: true,
                    onPageChanged: (index, reason) {
                      // setState(
                      //       () {
                      //     _currentIndex = index;
                      //   },
                      // );
                    }),
                items: imageSliders
                    .map((item) => InkWell(
                  onTap: () {
                    // int index = imageSliders.indexOf(item);
                    // AppData.launchURL(item.vdoURL);
                  },
                  child: Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius:
                        BorderRadius.all(Radius.circular(5)),
                        child: Stack(
                          children: [
                            Image.asset(
                              item,
                              fit: BoxFit.fill,
                              width: 1000,
                              height: double.maxFinite,
                              //height: 100,
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(200, 0, 0, 0),
                                      Color.fromARGB(0, 0, 0, 0)
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    // Text(
                                    //   (imageSliders.indexOf(item) + 1)
                                    //       .toString() +
                                    //       "/" +
                                    //       imageSliders.length
                                    //           .toString(),
                                    //   style: TextStyle(
                                    //     color: Colors.white,
                                    //     fontSize: 13.0,
                                    //     fontWeight: FontWeight.w200,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
                    .toList(),
              ),
              SizedBox(height: 3,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(
                          Routes
                              .REGISTERWITH_AADHAR_PAGE,
                        );
                      },
                      child: Container(
                        height:MediaQuery.of(context).size.height*0.12,
                          width:MediaQuery.of(context).size.width*0.45,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(05),color: Colors.green),

                          //color: Colors.teal,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 12.0,top: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/register.png",height: 50,width: 70,),

                                  ],
                                ),
                              ),
                              //SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,left: 5),
                                child: Text("REGISTER NEW CITIZEN",
                                  style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      height:MediaQuery.of(context).size.height*0.12,
                        width:MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(05),color: Colors.teal),

                        //color: Colors.teal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0,top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/ncd-screening.png",height: 50,width: 70,),

                                ],
                              ),
                            ),
                            //SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 5),
                              child: Text("NCD SCREENING TEST",
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height:MediaQuery.of(context).size.height*0.12,
                        width:MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(05),color: Colors.green),

                        //color: Colors.teal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0,top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/red-flag-alert.png",height: 50,width: 70,),

                                ],
                              ),
                            ),
                            //SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 5),
                              child: Text("RED FLAG ALERT LIST",
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                          ],
                        )),
                    Container(
                        height:MediaQuery.of(context).size.height*0.12,
                        width:MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(05),color: Colors.teal),

                        //color: Colors.teal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0,top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/health-checkup.png",height: 50,width: 70,),

                                ],
                              ),
                            ),
                            //SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 5),
                              child: Text("HEALTH CHECK-UP LIST",
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height:MediaQuery.of(context).size.height*0.12,
                        width:MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(05),color: Colors.green),

                        //color: Colors.teal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0,top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/checkupl-report.png",height: 50,width: 70,),

                                ],
                              ),
                            ),
                            //SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 5),
                              child: Text("CHECK-UP REPORTS",
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                          ],
                        )),
                    Container(
                        height:MediaQuery.of(context).size.height*0.12,
                        width:MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(05),color: Colors.teal),

                        //color: Colors.teal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0,top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/doctor-consultation.png",height: 50,width: 70,),

                                ],
                              ),
                            ),
                            //SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 5),
                              child: Text("DOCTOR CONSULTATION",
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height:MediaQuery.of(context).size.height*0.12,
                        width:MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(05),color: Colors.green),

                        //color: Colors.teal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0,top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/medicine-delivery.png",height: 50,width: 70,),

                                ],
                              ),
                            ),
                            //SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 5),
                              child: Text("MEDICINE DELIVERY",
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                          ],
                        )),
                    Container(
                        height:MediaQuery.of(context).size.height*0.12,
                        width:MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(05),color: Colors.teal),

                        //color: Colors.teal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12.0,top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/images/guide-book.png",height: 50,width: 70,),

                                ],
                              ),
                            ),
                            //SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0,left: 5),
                              child: Text("HELP/GUIDE BOOK",
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                            ),
                          ],
                        )),
                  ],
                ),
              ),

            ],
          ),
        ),
      )

    );
  }
}
