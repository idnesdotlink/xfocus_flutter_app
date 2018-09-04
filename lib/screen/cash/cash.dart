import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CashScreen extends StatefulWidget{
  _CashScreenState createState()=>  _CashScreenState();
}


class _CashScreenState extends State<CashScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Cash'),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(
            icon: Icon(
            FontAwesomeIcons.bell,
            ),
            onPressed: () => {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Text('Cash Screen'),
        ],
      ),
    );
  }
}