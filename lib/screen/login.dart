import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.orange,
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/png/logo-50.png')
                )
              ),
            ),
            ),
            new Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: new TextFormField(
                decoration: InputDecoration(labelText: 'Enter your username'),
              ),
            ),
            new RaisedButton(
              color: Colors.purple,
              child: new Text(
                'Login',
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/dashboard');
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
