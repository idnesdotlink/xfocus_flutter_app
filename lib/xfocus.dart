import 'package:flutter/material.dart';
import 'package:xfocus_mobile/route.dart';

class XFocusApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'XFocus Mock Up',
      theme:  ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
