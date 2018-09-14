import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;

class PreferenceScreen extends StatefulWidget {
  _PreferenceScreenState createState() => _PreferenceScreenState();
}

class _PreferenceScreenState extends State<PreferenceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VersionOne(
        pageTitle: 'QR Preference'
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}