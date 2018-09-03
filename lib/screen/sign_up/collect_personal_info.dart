import 'package:flutter/material.dart';

class CollectPersonalInfo extends StatefulWidget {
  CollectPersonalInfo({Key key}) : super(key: key);
  _CollectPersonalInfoState createState() => _CollectPersonalInfoState();
}

class _CollectPersonalInfoState extends State<CollectPersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/sign_up/choose_credentials');
        },
        child: Text('Choose Credentials')
      ),
    );
  }
}
