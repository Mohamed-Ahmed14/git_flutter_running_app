import 'package:flutter/material.dart';
import 'package:running_app_test/view/screens/nonaddress_screen.dart';

import 'get_started_screen.dart';
import 'home_screen.dart';
import 'onboarding_screen.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28333F),
      appBar: AppBar(
        backgroundColor: Color(0xff28333F),

        leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartedScreen(),));
            },
            child: Icon(Icons.arrow_back_rounded,color: Colors.white,size: 24,)),
      ),
      body: Center(
        child: Column(

          children: [

            Image.asset("assets/images/email.png",fit: BoxFit.fill,),
            SizedBox(height: 30,),
            Text("Verify your email",style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.w700
            ),),
            SizedBox(height: 5,),
            Text("Enter the email associated with your account\n     we’ll send email with password to verify",style: TextStyle(
                color: Color(0xffCDCDCD),
                fontSize: 12,
                fontWeight: FontWeight.w400
            ),),

            Padding(
              padding: EdgeInsets.only(left: 40,right: 40,top: 10,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xff2F3C50),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff1C252C)),
                      ),
                      child: Center(
                        child: Text("3",style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xff2F3C50),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff1C252C)),
                      ),
                      child: Center(
                        child: Text("",style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xff2F3C50),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff1C252C)),
                      ),
                      child: Center(
                        child: Text("",style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xff2F3C50),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff1C252C)),
                      ),
                      child: Center(
                        child: Text("",style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox(height: 10,)),
  
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff7B61FF),
                  fixedSize: Size(300, 45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  side: BorderSide(color: Color(0xff7B61FF)),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => NonAddressScreen(),), (route) => false);
                },
                child: Text("Verify Email",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                )),
            SizedBox(height: 10,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  fixedSize: Size(300, 45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  side: BorderSide(color: Color(0xff7B61FF)),
                ),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return OnboardingScreen();
                  }));
                },
                child: Text("Open mail app",style: TextStyle(
                    color: Color(0xff7B61FF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                )),
            SizedBox(height: 30,),

          ],

        ),
      ),
    );
  }
}
