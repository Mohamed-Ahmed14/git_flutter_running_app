import 'package:flutter/material.dart';
import 'package:running_app_test/model/account_model/withdrwal.dart';
import 'package:running_app_test/view/screens/account/account_widget.dart';
import 'package:running_app_test/view/screens/home_screen.dart';
import 'package:running_app_test/view/screens/onboarding_screen.dart';

import '../get_started_screen.dart';
import '../layout_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
        title: Text("New Wallet",style: TextStyle(
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

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
            
              children: [
                Text("Select the",style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w700
                ),),
                Text("withdrawal type",style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.w700
                ),),
                SizedBox(height: 20,),
            
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                  return AccountWidget(withdrwal: withdrwalList[index]);
                }, separatorBuilder: (context, index) {
                  return SizedBox(height: 10,);
                }, itemCount: withdrwalList.length),
                SizedBox(height: 60,),
            
              ],
            ),
          ),
        ),
      ),

    );
  }
}
