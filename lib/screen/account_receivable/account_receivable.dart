import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountReceivableScreen extends StatefulWidget{
  _AccountReceivableScreenState createState()=>  _AccountReceivableScreenState();
}


class _AccountReceivableScreenState extends State<AccountReceivableScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Account Receivable'),
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
          Text('Account Receivable Screen'),
        ],
      ),
    );
  }
}