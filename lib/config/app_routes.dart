import '../screen/login.dart';
import '../screen/dashboard/dashboard.dart';
import '../screen/get_local.dart';
import '../screen/get_server.dart';
import '../screen/get_websocket.dart';
import '../screen/basic.dart';
import '../screen/sign_up/sign_up.dart';

final appRoutes = {
  '/': (context) => LoginPage(),
  '/dashboard': (context) => DashboardPage(title: 'Dashboard'),
  '/get_local': (context) => GetLocal.withDummyData(),
  '/get_server': (context) => GetServer(),
  '/get_websocket': (context) => GetWebsocket.withExample(),
  '/basic': (context) => BasicAppBarSample(),
  '/sign_up': (context) => new SignUp(),
};
