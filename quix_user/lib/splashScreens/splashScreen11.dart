import 'package:flutter/material.dart';

class SplashScreen11 extends StatefulWidget {
  @override
  _SplashScreen11State createState() => _SplashScreen11State();
}

class _SplashScreen11State extends State<SplashScreen11> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/11.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      print ('here 11');
      Navigator.pushReplacementNamed(context, '/splashScreen12');
    });
  }
}
