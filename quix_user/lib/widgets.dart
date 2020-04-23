import 'package:flutter/material.dart';
import 'package:quix_user/customIcons/my_flutter_app_icons.dart';

Widget customBottomNavBar(BuildContext context, int index) {
  return BottomNavigationBar(
    currentIndex: index,
    items: [
      BottomNavigationBarItem(
          title: Text('   Home'),
          icon: IconButton(
            icon: Icon(
              MyFlutterApp.home,
              size: 35.0,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/homePage');
            },
          )),
      BottomNavigationBarItem(
          title: Text('My Orders'),
          icon: IconButton(
            icon: Icon(
              MyFlutterApp.myorder,
              size: 35.0,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/myOrdersPage');
            },
          )),
      BottomNavigationBarItem(
          title: Text('My Quix'),
          icon: IconButton(
            icon: Icon(
              MyFlutterApp.myquix,
              size: 35.0,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/quixPage');
            },
          )),
    ],
    backgroundColor: Color(0xfff4f3f3),
  );
}

Widget customTopNavBar(BuildContext context) {
  return Container(
    height: 100.0,
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
              ),
              Text(
                'Deliver ASAP to',
                style: TextStyle(
                    color: Color(0xff1f5fa9), fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Color(0xff1f5fa9),
                    size: 40.0,
                  ),
                  onPressed: () {}),
              Container(
                margin: EdgeInsets.all(5.0),
                height: 35.0,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xfff4f3f3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.location_on),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText:
                                '617 El Narges, New Cairo, Cairo , Egypt'),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_drop_down),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              IconButton(
                  icon: Icon(
                    MyFlutterApp.mybasket,
                    color: Color(0xff1f5fa9),
                    size: 30.0,
                  ),
                  onPressed: () {}),
            ],
          )
        ],
      ),
    ),
    decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border(bottom: BorderSide(width: 5.0, color: Color(0xfff4f3f3)))),
  );
}

Widget toggleTopBar() {
  return Container(
    height: 50.0,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border(
        bottom: BorderSide(
          width: 5.0,
          color: Color(0xfff4f3f3),
        ),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              MyFlutterApp.search,
              color: Color(0xff1f5fa9),
            ),
          ),
          VerticalDivider(
            color: Color(0xfff4f3f3),
            thickness: 3.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              MyFlutterApp.filter,
              color: Color(0xff1f5fa9),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget categoryBox(BuildContext context, String img, String title) {
  return InkWell(
    onTap: () {},
    child: Container(
      height: MediaQuery.of(context).size.width / 5,
      width: MediaQuery.of(context).size.width / 5,
      decoration: BoxDecoration(
        color: Color(0xff1F5FA9),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    img,
                    height: MediaQuery.of(context).size.width / 8,
                    width: MediaQuery.of(context).size.width / 8,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget categoriesMenu(BuildContext context) {
  return Column(children: <Widget>[
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          categoryBox(
              context, 'assets/homePageAssets/Icon-Food@2x.png', 'Food'),
          categoryBox(
              context, 'assets/homePageAssets/Icon-grocury@2x.png', 'Grocery'),
          categoryBox(context, 'assets/homePageAssets/Icon-Pharmacy@2x.png',
              'Pharmacy'),
          categoryBox(context, 'assets/homePageAssets/Icon-Anything@2x.png',
              'Anything'),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          categoryBox(
              context, 'assets/homePageAssets/Icon-Laundry@2x.png', 'Laundry'),
          categoryBox(context, 'assets/homePageAssets/Icon-HomeCleaning@2x.png',
              'Home Cleaning'),
          categoryBox(
              context, 'assets/homePageAssets/Icon-CarWash@2x.png', 'Car Wash'),
          categoryBox(
              context, 'assets/homePageAssets/Icon-Courier@2x.png', 'Courier'),
        ],
      ),
    )
  ]);
}

Widget transferMoneyButton(BuildContext context) {
  return InkWell(
    onTap: () {
      print('money transfer');
      Navigator.pushNamed(context, '/transferMoneyPage');
    },
    child: Padding(
      padding: EdgeInsets.all(15.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100.0,
        decoration: BoxDecoration(
            color: Color(0xffDCC99B),
            borderRadius: BorderRadius.circular(15.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/homePageAssets/EnjazLogo@3x.png', height: 60.0),
            Text(
              'Transfer Money NOW ! \n Only One Click Away',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/homePageAssets/Icon-MoneyTransfer@3x.png',
                height: 60.0),
          ],
        ),
      ),
    ),
  );
}

Widget bannerItem(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 25.0, // soften the shadow
          spreadRadius: 5.0, //extend the shadow
          offset: Offset(
            15.0, // Move to right 10  horizontally
            15.0, // Move to bottom 10 Vertically
          ),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'For Our Customer',
                  style: TextStyle(color: Color(0xff707070), fontSize: 20.0),
                ),
                Text(
                  '25 %',
                  style: TextStyle(color: Color(0xff1f5fa9), fontSize: 25.0),
                ),
                Text(
                  'On ALL Your Orders',
                  style: TextStyle(color: Color(0xff707070), fontSize: 20.0),
                ),
              ],
            ),
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: Color(0xff1F5FA9), shape: BoxShape.circle),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Order \nNOW !',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget bannerArea(BuildContext context) {
  return Container(
    height: 200.0,
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
        color: Colors.grey, blurRadius: 25.0, // soften the shadow
        spreadRadius: 5.0, //extend the shadow
        offset: Offset(
          15.0, // Move to right 10  horizontally
          15.0, // Move to bottom 10 Vertically
        ),
      )
    ]),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        bannerItem(context),
        bannerItem(context),
        bannerItem(context),
      ],
    ),
  );
}

Widget comingSoon(BuildContext context) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
    width: MediaQuery.of(context).size.width * 0.4,
    height: 100.0,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Image.asset(
        'assets/homePageAssets/comingsoon.jpg',
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget bestSellersArea(BuildContext context) {
  return Container(
    color: Colors.white,
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Best Rated Sellers',
                style: TextStyle(
                    color: Color(0xff1F5FA9),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      comingSoon(context),
                      comingSoon(context),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      comingSoon(context),
                      comingSoon(context),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

//FOR SENDMONEYPAGE

Widget enjazBanner(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 25.0, // soften the shadow
          spreadRadius: 5.0, //extend the shadow
          offset: Offset(
            15.0, // Move to right 10  horizontally
            15.0, // Move to bottom 10 Vertically
          ),
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          child: Image.asset(
            'assets/homePageAssets/enjazbanner.png',
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    ),
  );
}

//FOR ORDERSTATUSPAGE

Widget orderStatusTopBar(BuildContext context) {
  return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 3.0, color: Colors.grey),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        child: Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xff1f5fa9),
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/homePage');
                    }),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Order Status',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text('#1273847')
                  ],
                ),
                //NEED HELP
              ],
            ),
          ],
        ),
      ));
}

Widget deliveryMap(BuildContext context) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: 300.0,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Image.asset(
          'assets/orderStatusAssets/map.png',
          fit: BoxFit.fill,
        ),
      ));
}

Widget deliveryStatus(
    BuildContext context, String img, String status, Color color) {
  return Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.all(10.0),
        height: MediaQuery.of(context).size.width / 6,
        width: MediaQuery.of(context).size.width / 6,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: color, boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              5.0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          ),
        ]),
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            img,
            fit: BoxFit.contain,
            height: (MediaQuery.of(context).size.width / 6) * 0.7,
            width: (MediaQuery.of(context).size.width / 6) * 0.8,
          ),
        ),
      ),
      Text(status),
    ],
  );
}

Widget packageStatus(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      deliveryStatus(context, 'assets/orderStatusAssets/placed.png', 'Placed',
          Colors.blue),
      deliveryStatus(context, 'assets/orderStatusAssets/accepted.png',
          'Accepted', Colors.white),
      deliveryStatus(context, 'assets/orderStatusAssets/delivered.png',
          'Delivered', Colors.white),
    ],
  );
}

//////////////////ForMULTIPLECHOICE

Widget loginButton(BuildContext context, Color boxcolor, Color logocolor,
    String title, String img, String route) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.8,
    height: 50.0,
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      color: boxcolor,
      onPressed: () {
        Navigator.pushReplacementNamed(context, route);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                width: 30.0,
                height: 30.0,
                color: logocolor,
                child: Image.asset(
                  img,
                  fit: BoxFit.contain,
                )),
            SizedBox(width: 30.0),
            Text(title, style: TextStyle(color: Colors.white, fontSize: 20.0)),
          ],
        ),
      ),
    ),
  );
}
//ForFORMS

Widget formElement(String title, String hint, bool obscured,
    {TextEditingController controller}) {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(color: Color(0xff1F5FA9)),
          )
        ],
      ),
      Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              obscureText: obscured,
              controller: controller,
              decoration: InputDecoration(
                hintText: hint,
              ),
            ),
          ),
        ],
      )
    ],
  );
}

//ForINTROS
