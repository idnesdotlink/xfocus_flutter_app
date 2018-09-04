import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CashScreen extends StatefulWidget{
  _CashScreenState createState()=>  _CashScreenState();
}


class _CashScreenState extends State<CashScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(9, 28, 79, 1.0),
      appBar: AppBar(
        title: Text('kas Bank'),
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
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.red,
            height: 50.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () => {},
                ),
                Text('Text 2'),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Text('Cash Screen',),
            ),
          ),
          Container(
            color: Colors.red,
            height: 50.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Text 1'),
                Text('Text 2'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}