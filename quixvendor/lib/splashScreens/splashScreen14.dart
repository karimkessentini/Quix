import 'package:flutter/material.dart';

class SplashScreen14 extends StatefulWidget {
  @override
  _SplashScreen14State createState() => _SplashScreen14State();
}

class _SplashScreen14State extends State<SplashScreen14> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/14.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      print ('here 14');
      Navigator.pushReplacementNamed(context, '/splashScreen15');
    });
  }
}
