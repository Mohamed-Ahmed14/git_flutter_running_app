import 'package:flutter/material.dart';
import 'package:running_app_test/view/screens/home_screen.dart';
import 'package:running_app_test/view/screens/layout_screen.dart';

import 'onboarding_screen.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28333F),

      body: SimpleDialog(
        backgroundColor: Color(0xff28333F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(24),
          side: BorderSide(
            color: Color(0xff1C252C),
          )
        ),
        contentPadding: EdgeInsets.all(28),
        insetPadding: EdgeInsets.symmetric(horizontal: 16),
        alignment: AlignmentDirectional.centerStart,
        children: [
          //Image.asset("assets/images/update.png",height: 100,),
          Column(
            children: [
              Image.asset("assets/images/update.png",),
              SizedBox(height: 20,),
              Text("Account Updated",style: TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.w700,
              ),),
              SizedBox(height: 10,),
              Text("Your account details have been successfully \n                                changed",style: TextStyle(
                color: Color(0xffCDCDCD),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),),
              SizedBox(height: 20,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff7B61FF),
                    fixedSize: Size(300, 45),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context){
                      return LayoutScreen();
                    }),(route) => false,);
                  },
                  child: Text("Ok",style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),)),

            ],
          ),


        ],
      ),
    );
  }
}
