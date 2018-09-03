import 'package:flutter/material.dart';
/* import 'collect_personal_info.dart';
import 'choose_credentials.dart'; */
import 'package:xfocus_mobile/components/app-drawer.dart';
import 'package:xfocus_mobile/library/RouteGenerator.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SignUp builds its own Navigator which ends up being a nested
    // Navigator in our app.
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      drawer: AppDrawer(),
      body: Navigator(
      initialRoute: '/sign_up/personal_info',
      onGenerateRoute: (RouteSettings settings) {
        return routeGenerator(settings, context);
      },
      ),
    );
  }
}
