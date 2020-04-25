import 'package:flutter/material.dart';

class SplashScreen10 extends StatefulWidget {
  @override
  _SplashScreen10State createState() => _SplashScreen10State();
}

class _SplashScreen10State extends State<SplashScreen10> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/10.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      print ('here 10');
      Navigator.pushReplacementNamed(context, '/splashScreen11');
    });
  }
}
