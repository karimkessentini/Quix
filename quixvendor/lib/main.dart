import 'package:flutter/material.dart';
import 'package:quix_user/createAccountPage.dart';
import 'package:quix_user/forgotPasswordPage.dart';
import 'package:quix_user/homePage.dart';
import 'package:quix_user/introPage.dart';
import 'package:quix_user/multipleChoicePage.dart';
import 'package:quix_user/myOrdersPage.dart';
import 'package:quix_user/orderStatusPage.dart';
import 'package:quix_user/quix.dart';
import 'package:quix_user/signInPage.dart';
import 'package:quix_user/splashScreens/splashScreen.dart';
import 'package:quix_user/splashScreens/splashScreen02.dart';
import 'package:quix_user/splashScreens/splashScreen03.dart';
import 'package:quix_user/splashScreens/splashScreen04.dart';
import 'package:quix_user/splashScreens/splashScreen05.dart';
import 'package:quix_user/splashScreens/splashScreen06.dart';
import 'package:quix_user/splashScreens/splashScreen07.dart';
import 'package:quix_user/splashScreens/splashScreen08.dart';
import 'package:quix_user/splashScreens/splashScreen09.dart';
import 'package:quix_user/splashScreens/splashScreen10.dart';
import 'package:quix_user/splashScreens/splashScreen11.dart';
import 'package:quix_user/splashScreens/splashScreen12.dart';
import 'package:quix_user/splashScreens/splashScreen13.dart';
import 'package:quix_user/splashScreens/splashScreen14.dart';
import 'package:quix_user/splashScreens/splashScreen15.dart';
import 'package:quix_user/test.dart';
import 'package:quix_user/transferMoneyPage.dart';
import 'package:quix_user/verifyCodePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Quix Vendor',
        theme: ThemeData(
          primaryColor: Color(0xff1a4b6f),
          accentColor: Colors.white,
        ),
        home: SplashScreen02(),
        routes: {
          '/test' : (context) => CarouselDemo(),
          '/introPage': (context) => IntroPage(),
          '/multipleChoicePage': (context) => MultipleChoicePage(),
          '/signInPage': (context) => SignInPage(),
          '/createAccountPage': (context) => CreateAccountPage(),
          '/forgotPasswordPage': (context) => ForgotPasswordPage(),
          '/verifyCodePage': (context) => VerifyCodePage(),
          '/homePage': (context) => HomePage(),
          '/myOrdersPage': (context) => OrdersPage(),
          '/quixPage': (context) => QuixPage(),
          '/transferMoneyPage': (context) => TransferMoneyPage(),
          '/orderStatusPage': (context) => OrderStatus(),
          '/splashScreen': (context) => SplashScreen(),
          '/splashScreen03': (context) => SplashScreen03(),
          '/splashScreen04': (context) => SplashScreen04(),
          '/splashScreen05': (context) => SplashScreen05(),
          '/splashScreen06': (context) => SplashScreen06(),
          '/splashScreen07': (context) => SplashScreen07(),
          '/splashScreen08': (context) => SplashScreen08(),
          '/splashScreen09': (context) => SplashScreen09(),
          '/splashScreen10': (context) => SplashScreen10(),
          '/splashScreen11': (context) => SplashScreen11(),
          '/splashScreen12': (context) => SplashScreen12(),
          '/splashScreen13': (context) => SplashScreen13(),
          '/splashScreen14': (context) => SplashScreen14(),
          '/splashScreen15': (context) => SplashScreen15(),
        });
  }
}
