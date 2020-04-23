import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quix_user/widgets.dart';

class MultipleChoicePage extends StatefulWidget {
  @override
  _MultipleChoicePageState createState() => _MultipleChoicePageState();
}

class _MultipleChoicePageState extends State<MultipleChoicePage> {
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'assets/introAssets/intropic1.png',
    'assets/introAssets/intropic2.png',
    'assets/introAssets/intropic3.png',
  ];
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
                        Navigator.pushReplacementNamed(context,'/introPage');
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: InkWell(
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            color: Color(0xff1F5FA9),
                            fontSize: 20.0,
                            decoration: TextDecoration.underline),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/homePage');
                      },
                    ),
                  )
                ],
              ),
              loginButton(
                  context,
                  Color(0xff1F5FA9),
                  Colors.white,
                  "Sign Up to Quix",
                  'assets/introAssets/QuixIcon.png',
                  '/signInPage'),
              loginButton(
                  context,
                  Color(0xffD1202F),
                  Colors.white,
                  "Continue With Gmail",
                  'assets/introAssets/google.png',
                  '/homePage'),
              loginButton(
                  context,
                  Color(0xff1F5FA9),
                  Color(0xff1F5FA9),
                  "Continue With FaceBook",
                  'assets/introAssets/facebook.png',
                  '/homePage'),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                      side: BorderSide(color: Color(0xff1F5FA9))),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/createAccountPage');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Create a Quix Account',
                            style: TextStyle(
                                color: Color(0xff1F5FA9), fontSize: 20.0)),
                      ],
                    ),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                    text: 'By proceeding you agree with the \n',
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Terms of Use',
                        style: TextStyle(
                            color: Color(0xff1F5FA9),
                            decoration: TextDecoration.underline),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            color: Color(0xff1F5FA9),
                            decoration: TextDecoration.underline),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
