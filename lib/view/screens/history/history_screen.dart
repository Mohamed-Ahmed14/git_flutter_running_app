import 'package:flutter/material.dart';
import 'package:running_app_test/model/history_model/record.dart';
import 'package:running_app_test/view/screens/get_started_screen.dart';
import 'package:running_app_test/view/screens/history/history_widget.dart';
import 'package:running_app_test/view/screens/home_screen.dart';
import 'package:running_app_test/view/screens/layout_screen.dart';

import '../onboarding_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff28333F),
        backgroundColor: Color(0xff2F3C50),

      appBar: AppBar(
       // backgroundColor: Color(0xff28333F),
        backgroundColor: Color(0xff2F3C50),
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
        title: Text("History",style: TextStyle(
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
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                //color: Color(0xff2F3C50),
                //color: Colors.purple[500],
                gradient: LinearGradient(colors:[Colors.blueGrey[900]!,Colors.blueGrey[700]!,Colors.blueGrey[900]!]),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color:Color(0xff1C252C)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/time.png"),
                      SizedBox(height: 5,),
                      Text("18,3 H",style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),),
                      SizedBox(height: 5,),
                      Text("Time",style: TextStyle(
                        color: Color(0xffCDCDCD),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/route.png"),
                      SizedBox(height: 5,),
                      Text("48,7 KM",style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),),
                      SizedBox(height: 5,),
                      Text("Distance",style: TextStyle(
                        color: Color(0xffCDCDCD),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset("assets/images/circlefav.png"),
                      SizedBox(height: 5,),
                      Text("123 BPM",style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),),
                      SizedBox(height: 5,),
                      Text("Heart Beat",style: TextStyle(
                        color: Color(0xffCDCDCD),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),),

                    ],
                  ),

                ],
              ),
            ),
          SizedBox(height: 10,),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
            return HistoryWidget(resualt: resList[index],);
          }, separatorBuilder: (context, index) {
            return SizedBox(height: 8,);
          }, itemCount: resList.length)

        ],
      )
    );
  }
}
