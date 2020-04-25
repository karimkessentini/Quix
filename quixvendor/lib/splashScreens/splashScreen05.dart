import 'package:flutter/material.dart';

class SplashScreen05 extends StatefulWidget {
  @override
  _SplashScreen05State createState() => _SplashScreen05State();
}

class _SplashScreen05State extends State<SplashScreen05> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/05.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      print ('here 05');
      Navigator.pushReplacementNamed(context, '/splashScreen06');
    });
  }
}
