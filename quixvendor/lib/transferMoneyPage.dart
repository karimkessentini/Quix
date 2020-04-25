import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quix_user/widgets.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class TransferMoneyPage extends StatefulWidget {
  @override
  _TransferMoneyPageState createState() => _TransferMoneyPageState();
}

class _TransferMoneyPageState extends State<TransferMoneyPage> {
  //FUNCTIONS AREA

  transferMoney(
      bool albiladBankAccount,
      String enjoyAccountNumber,
      String amount,
      String currency,
      String receiverName,
      String pickUp,
      String pickupTime) async {
    Map pickUpSchema = {
      'longitude': pickUp,
      'latitude': pickUp,
      'address': pickUp
    };
    Map moneyTransfer = {
      "albiladBankAccount": albiladBankAccount,
      'enjoyAccountNumber': enjoyAccountNumber,
      'amount': amount,
      'currency': currency,
      'receiverName': receiverName,
      'pickUp': pickUpSchema,
      'pickupTime': pickupTime
    };
    Map<String, dynamic> data = {
      "vendorId": "5e94e9be543175247de720e6",
      "serviceId": "5e94f993baf4832d071f7a0a",
      "moneyTransfer": moneyTransfer,
    };

    var body = jsonEncode(data);
    var jsonResponse = null;
    var response = await http
        .post('http://35.246.130.180/api/v0/orders/money-transfer', body: body);

    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        print(response.body);
        //print(jsonResponse["phoneNumber"]);
        print('works!');
      }
    } else {
      print(response.body);
    }
  }

  //UI AREA

  final enjazAccountNumber = TextEditingController();
  final amountToSend = TextEditingController();
  final receiverName = TextEditingController();
  final location = TextEditingController();
  final dateTime = TextEditingController();
  bool albiladBankAccount = false;
  String dropdownValue = 'SAR';
  String currency;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              customTopNavBar(context),
              Container(
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
                    enjazBanner(context),
                    enjazBanner(context),
                    enjazBanner(context),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 30.0),
                  child: Text(
                    'This service presented to you from "enjaz" and "Quix" cooperation. you are one step away from sending your money, just select when and where you want to meet our driver to complete the transaction through the payment machine carried with our driver.Complete NOW !',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                                text: 'Do You Have Albilad Bank ',
                                style: TextStyle(color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Account ?',
                                      style:
                                          TextStyle(color: Color(0xff1F5FA9)))
                                ]),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text('No'),
                          Switch(
                            value: albiladBankAccount,
                            onChanged: (value) {
                              setState(() {
                                print(!albiladBankAccount);
                                albiladBankAccount = value;
                              });
                            },
                            activeTrackColor: Colors.lightBlueAccent,
                            activeColor: Colors.blue,
                          ),
                          /*Checkbox(
                            value: false,
                            onChanged: null,
                          ),*/
                          Text('Yes'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Create Albilad Account',
                              style: TextStyle(
                                  color: Color(0xff1F5FA9),
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                                text: 'Your ',
                                style: TextStyle(color: Color(0xff1F5FA9)),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Enjaz account number',
                                      style: TextStyle(color: Colors.black))
                                ]),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2.0,
                      ),
                      TextField(
                        controller: enjazAccountNumber,
                        decoration: InputDecoration(
                            hintText: 'Type your account number...'),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: RichText(
                              text: TextSpan(
                                  text: 'Transfer ',
                                  style: TextStyle(color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Amount ',
                                      style: TextStyle(
                                        color: Color(0xff1F5FA9),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'and Currency ',
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2.0,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.monetization_on),
                          SizedBox(
                            width: 100.0,
                            child: TextField(
                              controller: amountToSend,
                              decoration:
                                  InputDecoration(hintText: 'Amount...'),
                            ),
                          ),
                          VerticalDivider(
                            thickness: 2.0,
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(color: Colors.deepPurple),
                            /*underline: Container(
                              height: 2,
                              color: Colors.lightBlueAccent,
                            ),*/
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                                print(dropdownValue);
                              });
                            },
                            items: <String>['SAR', 'USD']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2.0,
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: RichText(
                              text: TextSpan(
                                  text: 'Receiver ',
                                  style: TextStyle(color: Color(0xff1F5FA9)),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Name ',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2.0,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.account_circle),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: TextField(
                              controller: receiverName,
                              decoration: InputDecoration(
                                  hintText: 'Type your receiver name...'),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: RichText(
                          text: TextSpan(
                              text: 'Where do you want to meet our ',
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Driver ?',
                                  style: TextStyle(
                                    color: Color(0xff1F5FA9),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Divider(
                        thickness: 2.0,
                      ),
                      TextField(
                        controller: location,
                        decoration: InputDecoration(hintText: 'Location...'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: RichText(
                          text: TextSpan(
                              text: 'Meet ',
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Time & Date',
                                  style: TextStyle(
                                    color: Color(0xff1F5FA9),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Divider(
                        thickness: 2.0,
                      ),
                      TextField(
                        controller: dateTime,
                        decoration: InputDecoration(hintText: 'Date & Time...'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Quix Service Fees',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("the bank's fees not included"),
                              ],
                            ),
                            Text(
                              '15 L.E.',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          height: 70.0,
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            onPressed: () {
                              currency = dropdownValue;
                              print(albiladBankAccount);
                              print(enjazAccountNumber.text);
                              print(amountToSend.text);
                              print(currency);
                              print(receiverName.text);
                              print(location.text);
                              print(dateTime.text);
                              transferMoney(
                                  albiladBankAccount,
                                  enjazAccountNumber.text,
                                  amountToSend.text,
                                  currency,
                                  receiverName.text,
                                  location.text,
                                  dateTime.text);
                              Navigator.pushNamed(context, '/orderStatusPage');
                            },
                            color: Color(0xff1F5FA9),
                            child: Text(
                              'CONFIRM ORDER',
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
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: customBottomNavBar(context, 0),
      ),
    );
  }
}

//FUNCTIONS
