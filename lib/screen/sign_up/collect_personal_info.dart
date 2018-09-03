import 'package:flutter/material.dart';

class CollectPersonalInfo extends StatefulWidget {
  CollectPersonalInfo({Key key}) : super(key: key);
  _CollectPersonalInfoState createState() => _CollectPersonalInfoState();
}

class _CollectPersonalInfoState extends State<CollectPersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text('Collect Personal Info'),
    );
  }
}
