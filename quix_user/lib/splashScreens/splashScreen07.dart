import 'package:flutter/material.dart';

class SplashScreen07 extends StatefulWidget {
  @override
  _SplashScreen07State createState() => _SplashScreen07State();
}

class _SplashScreen07State extends State<SplashScreen07> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/07.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      print ('here 07');
      Navigator.pushReplacementNamed(context, '/splashScreen08');
    });
  }
}
