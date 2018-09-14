import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;

class FirebaseauthScreen extends StatefulWidget {
  _FirebaseauthScreenState createState() => _FirebaseauthScreenState();
}

class _FirebaseauthScreenState extends State<FirebaseauthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VersionOne(
        pageTitle: 'Firebase Auth'
      ),
      body: Container(
        child: Text('Firebase Auth'),
      ),
    );
  }
}