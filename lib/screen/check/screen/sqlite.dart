import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;

class SqliteScreen extends StatefulWidget{
  _SqliteScreenState createState()=>  _SqliteScreenState();
}

class _SqliteScreenState extends State<SqliteScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: VersionOne(pageTitle: 'Sqlite'),
      body: Container(
        color: Colors.grey,
      ),
    );
  }
}