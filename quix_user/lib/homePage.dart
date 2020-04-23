import 'package:flutter/material.dart';
import 'package:quix_user/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            customTopNavBar(context),
            toggleTopBar(),
            Container(
              color: Color(0xffeeeded),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  categoriesMenu(context),
                  transferMoneyButton(context),
                ],
              ),
            ),
            bannerArea(context),
            bestSellersArea(context),
          ],
        )),
        bottomNavigationBar: customBottomNavBar(context,0),
      ),
    );
  }
}
