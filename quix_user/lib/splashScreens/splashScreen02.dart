import 'package:flutter/material.dart';

class SplashScreen02 extends StatefulWidget {
  @override
  _SplashScreen02State createState() => _SplashScreen02State();
}

class _SplashScreen02State extends State<SplashScreen02> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/02.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      print ('here 02');
      Navigator.pushReplacementNamed(context, '/splashScreen03');
    });
  }
}
