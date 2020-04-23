import 'package:flutter/material.dart';

class SplashScreen06 extends StatefulWidget {
  @override
  _SplashScreen06State createState() => _SplashScreen06State();
}

class _SplashScreen06State extends State<SplashScreen06> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/06.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      print ('here 06');
      Navigator.pushReplacementNamed(context, '/splashScreen07');
    });
  }
}
