import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/n_c_d_screening_page_controller.dart';
class MySeparator extends StatelessWidget {
  const MySeparator({Key? key, this.height = 1, this.color = Colors.black})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 6.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color,),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

class NCDScreeningPageView extends GetView<NCDScreeningPageController> {
  const NCDScreeningPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {



    TextEditingController nameController = TextEditingController();
    return Scaffold(

      backgroundColor: Colors.teal,
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
                    Icons.message,color: Colors.white,
                    size: 25, ),///
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


      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Divider(thickness: 1.0),
          Container(
            color: Colors.teal,
            width: 420,
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "NCD SCREENING LIST",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
              color: Colors.white,
              shape: BoxShape.rectangle
            ),
            child: TextField(
              controller: nameController,
              //textAlign: TextAlign. center,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(left: 15.0, right: 15.0),
                //suffixIcon: Icon(Icons.search),
                hintText: 'Search Patient',
                hintStyle: TextStyle(fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Expanded(

            child: Container(
              color: Colors.white,
              child: ListView.separated(
                separatorBuilder: (context, index) =>MySeparator()  ,
                  itemBuilder: (context,index){
                  return Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/userdisha1.png'),
                          ),
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name: Pooh', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Age: 26'),
                                  SizedBox(width: 5,),
                                  Text('G: Female'),
                                ],
                              ),
                            ],
                          ),
                          trailing: Icon(Icons.navigate_next),
                        ),
                      ),
                  );

              },

                padding: EdgeInsets.all(0.0),

              itemCount: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
