import 'package:xfocus_mobile/screen/login.dart';
import 'package:xfocus_mobile/screen/dashboard/dashboard.dart';
import 'package:xfocus_mobile/screen/get_local.dart';
import 'package:xfocus_mobile/screen/get_server.dart';
import 'package:xfocus_mobile/screen/basic.dart';

final appRoutes = {
  '/': (context) => LoginPage(),
  '/dashboard': (context) => DashboardPage(title: "Dashboard"),
  '/get_local': (context) => GetLocal.withDummyData(),
  '/get_server': (context) => GetServer(),
  '/basic': (context) => BasicAppBarSample(),
};
