import 'package:flutter/material.dart';

class ChooseCredentials extends StatefulWidget {
  final onSignupComplete;

  ChooseCredentials({Key key, this.onSignupComplete}) : super(key: key);
  _ChooseCredentialsState createState() => _ChooseCredentialsState();
}

class _ChooseCredentialsState extends State<ChooseCredentials> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: <Widget>[RaisedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/sign_up/personal_info');
        },
        child: Text('Choose Credentials')
        )]
      ),
    );
  }
}
