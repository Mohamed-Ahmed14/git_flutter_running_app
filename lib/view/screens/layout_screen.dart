import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:running_app_test/view/screens/store/store_screen.dart';

import 'account/account_screen.dart';
import 'history/history_screen.dart';
import 'home_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}
int currentIndex=0;

List<Widget> screens=[
  HomeScreen(),
  HistoryScreen(),
  StoreScreen(),
  AccountScreen(),

];

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
      extendBody: true,

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: DotNavigationBar(
          currentIndex: currentIndex,
            onTap:(value) {
            setState(() {
                currentIndex=value;
              });
            },
            backgroundColor: Color(0xff4F4C5F),
          marginR: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
          paddingR: EdgeInsets.only(top: 0,bottom: 0),



            borderRadius: 16,


          itemPadding: EdgeInsets.all(10),
          margin: EdgeInsets.all(30),
           dotIndicatorColor: Colors.transparent,

          unselectedItemColor: Colors.white,




          items: [
            DotNavigationBarItem(
              icon:Icon(Icons.home_rounded,size: 30,),
              selectedColor: Colors.purple,


            ),
            DotNavigationBarItem(
              icon:Icon(FontAwesomeIcons.trophy ,size: 24,),
              selectedColor: Colors.purple,


            ),


            DotNavigationBarItem(
              icon:Icon(FontAwesomeIcons.bagShopping,size: 24,),
              selectedColor: Colors.purple,


            ),
            DotNavigationBarItem(
              icon:Icon(Icons.person,size: 30,),
              selectedColor: Colors.purple,


            ),
          ],
        ),
      ),

    );
  }
}
