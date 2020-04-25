import 'package:flutter/material.dart';
import 'package:quix_user/widgets.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}
 fetchAlbum() {
  return http.get('https://jsonplaceholder.typicode.com/albums/1');
}



class _OrdersPageState extends State<OrdersPage> {
  Future<http.Response> getOrders()  async {
    String orders='No Orders Available for now';
    var jsonResponse = null;
    var response = await http.get(
      'http://35.246.130.180/api/v0/orders/vendor'
    );

    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        
        print(response.body);
        print(jsonResponse);
        print('Out!');
      }
    } else {
      
      print(response.body);
    }
    
  }
  @override
  Widget build(BuildContext context) {
    setState(() {
      getOrders();
    });
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            customTopNavBar(context),
            Text('No Orders Available for now'),
          ],
        ),
        bottomNavigationBar: customBottomNavBar(context, 1),
      ),
    );
  }
}
