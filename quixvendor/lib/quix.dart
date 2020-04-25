import 'package:flutter/material.dart';
import 'package:quix_user/widgets.dart';

class QuixPage extends StatefulWidget {
  @override
  _QuixPageState createState() => _QuixPageState();
}

class _QuixPageState extends State<QuixPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: comingSoon(context),
        ),
        bottomNavigationBar: customBottomNavBar(context,2),
      ),
    );
  }
}