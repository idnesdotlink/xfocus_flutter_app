// import 'package:xfocus_mobile/components/app_bar/primary_app_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class User extends StatelessWidget {
  User({Key key, @required this.onLogout, @required this.user, this.username})
      : super(key: key);

  final VoidCallback onLogout;
  final String username;
  final FirebaseUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: this.onLogout)
        ],
      ),
      body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(user.photoUrl),
              Text(
                user.displayName,
                textScaleFactor: 1.5,
              ),
            ],
          ))),
    );
  }
}
