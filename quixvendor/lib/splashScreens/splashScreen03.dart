import 'package:flutter/material.dart';

class SplashScreen03 extends StatefulWidget {
  @override
  _SplashScreen03State createState() => _SplashScreen03State();
}

class _SplashScreen03State extends State<SplashScreen03> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/03.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      print ('here 03');
      Navigator.pushReplacementNamed(context, '/splashScreen04');
    });
  }
}
