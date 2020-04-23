import 'package:flutter/material.dart';

class SplashScreen08 extends StatefulWidget {
  @override
  _SplashScreen08State createState() => _SplashScreen08State();
}

class _SplashScreen08State extends State<SplashScreen08> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/08.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      print ('here 08');
      Navigator.pushReplacementNamed(context, '/splashScreen09');
    });
  }
}
