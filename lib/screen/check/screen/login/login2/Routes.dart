import 'package:flutter/material.dart';
import 'Screens/Login/index.dart';
import 'Screens/Home/index.dart';

class Routes {
  Routes() {
    runApp(MaterialApp(
      title: "Dribbble Animation App",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/login':
            return MyCustomRoute(
              builder: (_) => LoginScreen(),
              settings: settings,
            );

          case '/home':
            return MyCustomRoute(
              builder: (_) => HomeScreen(),
              settings: settings,
            );
        }
      },
    ));
  }
}

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    return FadeTransition(opacity: animation, child: child);
  }
}
