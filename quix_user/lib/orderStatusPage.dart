import 'package:flutter/material.dart';
import 'package:quix_user/widgets.dart';

class OrderStatus extends StatefulWidget {
  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              orderStatusTopBar(context),
              deliveryMap(context),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          'assets/orderStatusAssets/time-left.png',
                          height: 30.0,
                          width: 30.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Estimated Time',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'from 40 to 55 min',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: <Widget>[
                    Divider(
                      thickness: 2.0,
                    ),
                    packageStatus(context),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                                text: 'Deliver  ',
                                style: TextStyle(
                                    color: Color(0xff1F5FA9), fontSize: 18.0),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'To ',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18.0))
                                ]),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2.0,
                    ),
                    comingSoon(context),
                    comingSoon(context),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        height: 70.0,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/homePage');
                          },
                          color: Color(0xff1F5FA9),
                          child: Text(
                            'BACK TO HOME',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
