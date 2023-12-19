import 'package:flutter/material.dart';
import 'package:running_app_test/view/screens/get_started_screen.dart';
import 'package:running_app_test/view/screens/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xff28333F),
      appBar: AppBar(
        backgroundColor: Color(0xff28333F),

        leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartedScreen(),));
            },
            child: Icon(Icons.arrow_back_rounded,color: Colors.white,size: 24,)),
        actions: [
          Text("Skip",style: TextStyle(
            color: Colors.white,
            fontSize: 14
          ),),
          SizedBox(width: 10,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Image.asset("assets/images/manRunning.png",height: 190,),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.all(8),
              width: 249,
              height: 245,
              decoration: BoxDecoration(
                color: Color(0xff2F3C50),
                borderRadius: BorderRadius.circular(48),
                border: Border.all(color: Color(0xff535E6E)),
                gradient: LinearGradient(colors: [Color(0xff535E6E),Color(0xff2B3744)]),
              ),
              child: Column(
                children: [
                  SizedBox(height: 25,),
                  Text("Run",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),),
                  SizedBox(height: 5,),
                  Text("Lorem Ipsum is simply dummy text of the\n  printing and typesetting industry. Lorem\n   Ipsum has been the industry's standard\n       dummy text ever since the 1500s",style: TextStyle(
                    color: Color(0xffCDCDCD),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(height: 25,),
                  Image.asset("assets/images/Sliderslider.png"),
                  SizedBox(height: 15,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff7B61FF),
                        fixedSize: Size(135, 45),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Next",style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),),
                          Icon(Icons.arrow_forward_outlined,color: Colors.white,size: 21,),
                        ],
                      )),


                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),),
                TextButton(onPressed: (){},
                    child: Text("Sign In",style: TextStyle(
                      color: Color(0xff7B61FF),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
