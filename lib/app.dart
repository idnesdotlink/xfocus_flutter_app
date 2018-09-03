import 'package:flutter/material.dart';
import 'package:xfocus_mobile/config/app_routes.dart';

Color primarySwatch = Colors.blue;
String title = 'XFocus Mobile';
final themeData = ThemeData(
  primarySwatch: primarySwatch,
);

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: themeData,
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}