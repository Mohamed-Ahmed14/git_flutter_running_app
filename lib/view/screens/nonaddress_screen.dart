import 'package:flutter/material.dart';
import 'package:running_app_test/view/screens/dialog_screen.dart';
import 'package:running_app_test/view/screens/home_screen.dart';

import 'get_started_screen.dart';
import 'onboarding_screen.dart';

class NonAddressScreen extends StatelessWidget {
  const NonAddressScreen({super.key});

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
        title: Text("Address",style: TextStyle(
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
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Image.asset("assets/images/location.png",fit: BoxFit.fill,),
            SizedBox(height: 15,),
            Text("Add your address",style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),),
            Expanded(
              child: Text("Unfortunately we don't know where to deliver\n                         your items to you",style: TextStyle(
                color: Color(0xffCDCDCD),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  fixedSize: Size(300, 45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  side: BorderSide(color: Color(0xff7B61FF)),
                ),
                onPressed: (){
                  Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context){
                    return DialogScreen();
                  }),(route) => false,);
                },
                child: Text("Add Address",style: TextStyle(
                    color: Color(0xff7B61FF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                )),

          ],
        ),
      ),
    );
  }
}
