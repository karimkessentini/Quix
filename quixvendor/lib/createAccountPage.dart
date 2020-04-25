import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quix_user/widgets.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

//FUNCTIONS AREA

signUp(
  String name,
  String phoneNumber,
  String email,
  String password,
) async {
  Map business = {
    "name": name,
    "businessType": "Bank",
    "address": {
      "country": "Egypt",
      "province": "Cairo",
      "district": "Nasr city",
      "addressLine": "Test street"
    },
    "legalForms": ["no-photo.jpg"]
  };
  
  Map<String, dynamic> data = {
    "name": name,
    "phoneNumber": phoneNumber,
    "email": email,
    "password": password,
    "business": business
  };

  var body = jsonEncode(data);
  var jsonResponse = null;
  var response = await http
      .post('http://35.246.130.180/api/v0/auth/vendor/signup', body: body);

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

class _CreateAccountPageState extends State<CreateAccountPage> {
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'assets/introAssets/intropic1.png',
    'assets/introAssets/intropic2.png',
    'assets/introAssets/intropic3.png',
  ];
  final username = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF4F3F3),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff707070),
                        size: 50.0,
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/introPage');
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 40.0),
                    child: Container(
                      child: Image.asset('assets/introAssets/LogoBlue.png'),
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                  ),
                ],
              ),
              //FromHere
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CarouselSlider(
                      height: 200.0,
                      initialPage: 0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      reverse: false,
                      enableInfiniteScroll: true,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayAnimationDuration: Duration(milliseconds: 2000),
                      pauseAutoPlayOnTouch: Duration(seconds: 10),
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      items: imgList.map((imgUrl) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Image.asset(
                                imgUrl,
                                fit: BoxFit.fill,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              //toHere
              SizedBox(
                height: 200.0,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 35.0, // soften the shadow
                  spreadRadius: 45.0, //extend the shadow
                  offset: Offset(
                    15.0, // Move to right 10  horizontally
                    15.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0))),
          height: 400.0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //HERE ARE ALL ELEMENTS
              children: <Widget>[
                formElement('Your Name*', 'Please type your name', false,
                    controller: username),
                formElement('Phone Number*', '+2 011-011-23454', false,
                    controller: phoneNumber),
                formElement('Password*', '8 or more characters', true,
                    controller: password),
                formElement('Email*', 'email@domain.com', false,
                    controller: email),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 60.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        color: Color(0xff1F5FA9),
                        onPressed: () {
                          print(username.text);
                          print(phoneNumber.text);
                          print(password.text);
                          print(email.text);
                          signUp(username.text, phoneNumber.text, email.text,
                              password.text);
                          Navigator.pushNamed(context, '/homePage');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text("CREATE ACCOUNT",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
