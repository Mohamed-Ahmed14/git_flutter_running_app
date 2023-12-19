import 'package:flutter/material.dart';
import 'package:running_app_test/model/store/store.dart';
import 'package:running_app_test/view/screens/home_screen.dart';
import 'package:running_app_test/view/screens/store/profile_widget.dart';

import '../get_started_screen.dart';
import '../layout_screen.dart';
import '../onboarding_screen.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28333F),
      appBar: AppBar(
        backgroundColor: Color(0xff28333F),
        leadingWidth: 40,

        leading: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartedScreen(),));
          },
          child: Container(

              margin: EdgeInsets.only(left: 20,top: 20,bottom: 20),
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: Color(0xff28333F),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.white),
              ),
              child: Center(child: Icon(Icons.arrow_back_ios_outlined,size: 10,color: Colors.white))),
        ),

        centerTitle: false,
        title: Text("Store",style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),),

        actions: [
          Image.asset("assets/images/notificationnotigy.png",width: 24,height: 20,),
          SizedBox(width: 10,),
          Image.asset("assets/images/notificationsms.png",width: 22,height: 30,),
          SizedBox(width: 10,),

        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                return ProfileWidget(person: personList[index],);
              }, separatorBuilder: (context, index) {
                return SizedBox(width: 0,);
              }, itemCount: personList.length),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration:BoxDecoration(
                      color: Color(0xffFF3A51),
                      borderRadius: BorderRadiusDirectional.circular(16),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Today’s Special",style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),),
                            SizedBox(height: 10,),
                            Text("Get 2x point for every steps, \nonly valid for today",style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),)
                          ],
                        ),
                        Image.asset("assets/images/woman.png"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration:BoxDecoration(
                      color: Color(0xff614385),
                      borderRadius: BorderRadiusDirectional.circular(16),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Today’s Special",style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),),
                            SizedBox(height: 10,),
                            Text("Get 2x point for every steps, \nonly valid for today",style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),)
                          ],
                        ),
                        Image.asset("assets/images/woman.png"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

           GridView.count(crossAxisCount: 4,
             childAspectRatio: 1.2,
             physics: NeverScrollableScrollPhysics(),
             shrinkWrap: true,
             mainAxisSpacing: 10,
             crossAxisSpacing: 10,
             children: [
               Container(
                 padding: EdgeInsets.all(8),

                 decoration: BoxDecoration(
                   color: Color(0xff2F3C50),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Center(
                   child: Column(
                     children: [
                       Image.asset("assets/images/puma.png"),
                       Text("Puma",style: TextStyle(
                           color: Color(0xffCDCDCD),
                           fontSize: 10,
                           fontWeight: FontWeight.w400
                       ),)
                     ],
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(12),

                 decoration: BoxDecoration(
                   color: Color(0xff2F3C50),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Center(
                   child: Column(
                     children: [
                       Image.asset("assets/images/reebook.png"),
                       SizedBox(height: 10,),
                       Text("Reebook",style: TextStyle(
                           color: Color(0xffCDCDCD),
                           fontSize: 10,
                           fontWeight: FontWeight.w400
                       ),)
                     ],
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(8),

                 decoration: BoxDecoration(
                   color: Color(0xff2F3C50),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Center(
                   child: Column(
                     children: [
                       Image.asset("assets/images/nike.png"),
                       Text("Nike",style: TextStyle(
                           color: Color(0xffCDCDCD),
                           fontSize: 10,
                           fontWeight: FontWeight.w400
                       ),)
                     ],
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(8),

                 decoration: BoxDecoration(
                   color: Color(0xff2F3C50),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Center(
                   child: Column(
                     children: [
                       Image.asset("assets/images/addidas.png"),
                       Text("Addidas",style: TextStyle(
                           color: Color(0xffCDCDCD),
                           fontSize: 10,
                           fontWeight: FontWeight.w400
                       ),)
                     ],
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(8),

                 decoration: BoxDecoration(
                   color: Color(0xff2F3C50),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Center(
                   child: Column(
                     children: [
                       Image.asset("assets/images/underamour.png"),
                       Text("UA",style: TextStyle(
                           color: Color(0xffCDCDCD),
                           fontSize: 10,
                           fontWeight: FontWeight.w400
                       ),)
                     ],
                   ),
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(8),

                 decoration: BoxDecoration(
                   color: Color(0xff2F3C50),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [

                     Text("Asics",style: TextStyle(
                         color: Color(0xffCDCDCD),
                         fontSize: 10,
                         fontWeight: FontWeight.w400
                     ),)
                   ],
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(8),

                 decoration: BoxDecoration(
                   color: Color(0xff2F3C50),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [

                     Text("Reebok",style: TextStyle(
                         color: Color(0xffCDCDCD),
                         fontSize: 10,
                         fontWeight: FontWeight.w400
                     ),)
                   ],
                 ),
               ),
               Container(
                 padding: EdgeInsets.all(8),

                 decoration: BoxDecoration(
                   color: Color(0xff2F3C50),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [

                     Text("See All",style: TextStyle(
                         color: Color(0xffCDCDCD),
                         fontSize: 10,
                         fontWeight: FontWeight.w400
                     ),)
                   ],
                 ),
               ),
             ],
           ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular",style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),),
                Text("See All",style: TextStyle(
                  color: Color(0xff7B61FF),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsetsDirectional.all(12),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey[800]!),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/images/coach.png"),
                          PositionedDirectional(
                            end: 5,
                            top: 5,
                            child: Container(
                              padding: EdgeInsetsDirectional.all(2),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Image.asset("assets/images/coincoins.png"),
                                  Text("1200",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),)

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("Nike",style: TextStyle(
                        color: Color(0xffCDCDCD),
                        fontSize: 10,
                      ),),
                      Text("Air Force 1 Low '07",style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),),

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.all(12),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey[800]!),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/images/shoes.png"),
                          PositionedDirectional(
                            end: 5,
                            top: 5,
                            child: Container(
                              padding: EdgeInsetsDirectional.all(2),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Image.asset("assets/images/coincoins.png"),
                                  Text("1200",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),)

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("Nike",style: TextStyle(
                        color: Color(0xffCDCDCD),
                        fontSize: 10,
                      ),),
                      Text("Air Lunaroll 1 ",style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),),

                    ],
                  ),
                ),
              ],
            ),


          ],
        ),
      ),

    );
  }
}
