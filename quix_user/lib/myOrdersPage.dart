import 'package:flutter/material.dart';
import 'package:quix_user/widgets.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: comingSoon(context),
        ),
        bottomNavigationBar: customBottomNavBar(context,1),
      ),
    );
  }
}
