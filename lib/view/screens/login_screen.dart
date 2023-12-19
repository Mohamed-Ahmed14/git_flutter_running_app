import 'package:flutter/material.dart';
import 'package:running_app_test/view/screens/email_screen.dart';

import 'get_started_screen.dart';
import 'home_screen.dart';
import 'onboarding_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Image.asset("assets/images/Logocircle.png",width: 70,height: 70,),
            SizedBox(height:45),
            Text("Log In",style: TextStyle(
                color: Colors.white,
                fontSize: 21,
              fontWeight: FontWeight.w700,
            ),),
            SizedBox(height: 10,),
            SizedBox(
              height: 45,
              child: TextFormField(
                style: TextStyle(color: Colors.white,fontSize: 20,),
                //textAlign: TextAlign.left,


                cursorHeight: 30,



                //clipBehavior: Clip.antiAlias,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Color(0xffAEA8B2),fontSize: 14),
                  filled: true,
                  fillColor: Color(0xff2F3C50),
                  border: OutlineInputBorder(


                    borderSide: BorderSide(
                      color: Color(0xff7B61FF),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff7B61FF),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 45,
              child: TextFormField(
                style: TextStyle(color: Colors.white,fontSize: 20),
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff2F3C50),
                  hintText: "Password",

                  hintStyle: TextStyle(color: Color(0xffAEA8B2),fontSize: 14),
                  suffixIcon: Image.asset("assets/images/eyeclosed.png",width: 15,),
                  border: OutlineInputBorder(

                    borderSide: BorderSide(
                      color: Color(0xff7B61FF),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff7B61FF),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.check_box_rounded,color: Color(0xff7B61FF)),
                SizedBox(width: 10,),
                Expanded(
                  child: Text("Remember Me",style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
                TextButton(onPressed: (){},
                  child: Text("Forget password?",style: TextStyle(
                    color: Color(0xff7B61FF),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),),),

              ],
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff7B61FF),
                  fixedSize: Size(300, 45),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: (){
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => EmailScreen(),), (route) => false);
                },
                child: Text("Log In",style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),)),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xff4B576B),
                      height: 1,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(width: 30,),
                  Text("or continue with",style: TextStyle(
                    color: Color(0xff4B576B),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(width: 30,),
                  Expanded(
                    child: Divider(
                      color: Color(0xff4B576B),
                      height: 1,
                      thickness: 1,
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 65,
                    width: 88,
                    decoration: BoxDecoration(
                      color: Color(0xff2F3C50),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xff535E6E)),
                      //gradient: LinearGradient(colors: [Color(0xff535E6E),Color(0xff2B3744)]),

                    ),
                    child: Image.asset("assets/images/Google.png"),
                  ),

                  Container(
                    height: 65,
                    width: 88,
                    decoration: BoxDecoration(
                      color: Color(0xff2F3C50),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xff535E6E)),
                      //gradient: LinearGradient(colors: [Color(0xff535E6E),Color(0xff2B3744)]),

                    ),
                    child: Image.asset("assets/images/Facebook.png",width: 12,height: 12,),
                  ),
                  Container(
                    height: 65,
                    width: 88,
                    decoration: BoxDecoration(
                      color: Color(0xff2F3C50),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xff535E6E)),
                      //gradient: LinearGradient(colors: [Color(0xff535E6E),Color(0xff2B3744)]),

                    ),
                    child: Image.asset("assets/images/twitter.png"),
                  ),

                ],
              ),
            ),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New User?",style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),),
                TextButton(onPressed: (){},
                  child: Text("Sign Up",style: TextStyle(
                    color: Color(0xff677FFF),
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
