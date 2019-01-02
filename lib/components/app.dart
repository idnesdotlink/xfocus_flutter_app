import 'package:flutter/material.dart';
import 'package:xfocus_mobile/routes/app.dart' as routes;
import 'package:xfocus_mobile/config/app.dart' as config;

class App extends StatelessWidget {
  final String title = config.app['title'];
  final themeData = ThemeData(
    primaryColor: Colors.orange,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    primaryIconTheme: IconThemeData(
      color: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: themeData,
      initialRoute: '/',
      routes: routes.appRoutes,
      debugShowCheckedModeBanner:
          false, // package:xfocus_mobile/config/app_routes.dart
    );
  }
}
