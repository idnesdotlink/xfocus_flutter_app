import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;

class SalesScreen extends StatefulWidget {
  _SalesScreenState createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: VersionOne(
        pageTitle: 'Penjualan',
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
          Text('Sales Screen'),
        ],
      ),
    );
  }
}
