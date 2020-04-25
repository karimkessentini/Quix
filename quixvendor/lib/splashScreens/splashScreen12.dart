import 'package:flutter/material.dart';

class SplashScreen12 extends StatefulWidget {
  @override
  _SplashScreen12State createState() => _SplashScreen12State();
}

class _SplashScreen12State extends State<SplashScreen12> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/12.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      print ('here 12');
      Navigator.pushReplacementNamed(context, '/splashScreen13');
    });
  }
}
