import 'package:flutter/material.dart';

class SplashScreen04 extends StatefulWidget {
  @override
  _SplashScreen04State createState() => _SplashScreen04State();
}

class _SplashScreen04State extends State<SplashScreen04> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/04.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      print ('here 04');
      Navigator.pushReplacementNamed(context, '/splashScreen05');
    });
  }
}
