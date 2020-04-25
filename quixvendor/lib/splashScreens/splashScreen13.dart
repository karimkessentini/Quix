import 'package:flutter/material.dart';

class SplashScreen13 extends StatefulWidget {
  @override
  _SplashScreen13State createState() => _SplashScreen13State();
}

class _SplashScreen13State extends State<SplashScreen13> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff1F5FA9),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Image.asset("assets/splashScreenAssets/13.png"),
          ),
        ),
      ),
    ));
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      print ('here 13');
      Navigator.pushReplacementNamed(context, '/splashScreen14');
    });
  }
}
