import '../screen/login.dart';
import '../screen/dashboard/dashboard.dart';
import '../screen/get_local.dart';
import '../screen/get_server.dart';
import '../screen/basic.dart';

final appRoutes = {
  '/': (context) => LoginPage(),
  '/dashboard': (context) => DashboardPage(title: 'Dashboard'),
  '/get_local': (context) => GetLocal.withDummyData(),
  '/get_server': (context) => GetServer(),
  '/basic': (context) => BasicAppBarSample(),
};
