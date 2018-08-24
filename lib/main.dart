import 'package:flutter/material.dart';
import './pages/dashboard.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'XFocus Mock Up',
      theme: new ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: new DashboardPage(title: 'Options XFocus Apps'),
    );
  }
}