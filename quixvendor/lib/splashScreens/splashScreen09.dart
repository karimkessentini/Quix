import 'package:flutter/material.dart';

class SplashScreen09 extends StatefulWidget {
  @override
  _SplashScreen09State createState() => _SplashScreen09State();
}

class _SplashScreen09State extends State<SplashScreen09> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/09.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      print ('here 09');
      Navigator.pushReplacementNamed(context, '/splashScreen10');
    });
  }
}
