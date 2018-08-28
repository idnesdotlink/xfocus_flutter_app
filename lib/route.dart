import 'package:xfocus_mobile/pages/login.dart';
import 'package:xfocus_mobile/pages/dashboard.dart';
import 'package:xfocus_mobile/pages/preference.dart';
import 'package:xfocus_mobile/pages/chart-example.dart';
import 'package:xfocus_mobile/pages/table.dart';

final appRoutes = {
  '/': (context) => new LoginPage(),
  '/dashboard': (context) => new DashboardPage(title: "Dashboard"),
  '/preference': (context) => new PreferencePage(title: "Preference"),
  '/chart-example': (context) => new ChartExamplePage(title: "Chart Example"),
  '/table': (context) => new DataTableDemo(),
};
