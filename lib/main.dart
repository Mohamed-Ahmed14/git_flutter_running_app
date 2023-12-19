

import 'package:flutter/material.dart';
import 'package:running_app_test/view/screens/account/account_screen.dart';
import 'package:running_app_test/view/screens/dialog_screen.dart';
import 'package:running_app_test/view/screens/email_screen.dart';
import 'package:running_app_test/view/screens/history/history_screen.dart';
import 'package:running_app_test/view/screens/layout_screen.dart';
import 'package:running_app_test/view/screens/store/store_screen.dart';

import 'view/screens/get_started_screen.dart';
import 'view/screens/home_screen.dart';
import 'view/screens/login_screen.dart';
import 'view/screens/nonaddress_screen.dart';
import 'view/screens/onboarding_screen.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GetStartedScreen(),
    //home: OnboardingScreen(),
    //home: LoginScreen(),
    //home: NonAddressScreen(),
    //home: HomeScreen(),
    //home: HistoryScreen(),
    //home: EmailScreen(),
    //home: AccountScreen(),
    //home: DialogScreen(),
    //home: StoreScreen(),
    //home: LayoutScreen(),

  ));
}