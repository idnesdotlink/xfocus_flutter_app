import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;

class SharedpreferenceScreen extends StatefulWidget{
  _SharedpreferenceScreenState createState()=>  _SharedpreferenceScreenState();
}

class _SharedpreferenceScreenState extends State<SharedpreferenceScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: VersionOne(pageTitle: 'Shared Preference'),
      body: Container(
        color: Colors.grey,
      ),
    );
  }
}