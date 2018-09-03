import 'package:flutter/material.dart';
import '../screen/login.dart';
import '../screen/dashboard/dashboard.dart';
import '../screen/get_local.dart';
import '../screen/get_server.dart';
import '../screen/get_websocket.dart';
import '../screen/basic.dart';
import '../screen/sign_up/sign_up.dart';
import '../screen/sign_up/choose_credentials.dart';
import '../screen/sign_up/collect_personal_info.dart';
import '../screen/example/time_line.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => LoginPage(),
  '/dashboard': (context) => DashboardPage(title: 'Dashboard'),
  '/example_line_chart': (context) => ExampleTimeLine(title: 'Dashboard'),
  '/get_local': (context) => GetLocal.withDummyData(),
  '/get_server': (context) => GetServer(),
  '/get_websocket': (context) => GetWebsocket(),
  '/basic': (context) => BasicAppBarSample(),
  '/sign_up': (context) => SignUp(),
  '/sign_up/choose_credentials': (context) => ChooseCredentials(),
  '/sign_up/collect_personal_info': (context) => CollectPersonalInfo(),
};
