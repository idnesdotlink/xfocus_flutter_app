import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InventoryScreen extends StatefulWidget{
  _InventoryScreenState createState()=>  _InventoryScreenState();
}


class _InventoryScreenState extends State<InventoryScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Inventory'),
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
          Text('Inventory Screen'),
        ],
      ),
    );
  }
}