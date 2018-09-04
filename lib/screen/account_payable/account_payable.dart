import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountPayableScreen extends StatefulWidget{
  _AccountPayableScreenState createState()=>  _AccountPayableScreenState();
}


class _AccountPayableScreenState extends State<AccountPayableScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Account Payable'),
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
          Text('Account Payable Screen'),
        ],
      ),
    );
  }
}