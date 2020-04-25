import 'package:flutter/material.dart';

class SplashScreen15 extends StatefulWidget {
  @override
  _SplashScreen15State createState() => _SplashScreen15State();
}

class _SplashScreen15State extends State<SplashScreen15> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/15.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      print ('here 15');
      Navigator.pushReplacementNamed(context, '/splashScreen');
    });
  }
}
