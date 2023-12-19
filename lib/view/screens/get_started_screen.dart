

import 'package:flutter/material.dart';

import 'onboarding_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28333F),
      appBar: AppBar(
        backgroundColor: Color(0xff28333F),
        leading: Container(
          color: Colors.transparent,
        ),
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assets/images/peopleRunning.png",fit: BoxFit.fill,),
            PositionedDirectional(
              bottom: 30,
              start: MediaQuery.of(context).size.width/2 - 150,
              child: Column(
                children: [
                  Text("Running App",style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                  ),),
                  Text("Run and earn with our app. some\n       text Example will be her",style: TextStyle(
                      color: Color(0xffAEA8B2),
                      fontSize: 14,
                      fontWeight: FontWeight.normal
                  ),),
                  SizedBox(height: 30,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff7B61FF),
                      fixedSize: Size(300, 56),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                      onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                        return OnboardingScreen();
                      }));
                      },
                      child: Text("Get Started",style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),))
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
