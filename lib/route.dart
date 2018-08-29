import 'package:xfocus_mobile/pages/login.dart';
import 'package:xfocus_mobile/pages/dashboard/dashboard.dart';
import 'package:xfocus_mobile/pages/preference.dart';
import 'package:xfocus_mobile/pages/chart-example.dart';
import 'package:xfocus_mobile/pages/table.dart';
import 'package:xfocus_mobile/pages/get_dummy_json.dart';
import 'package:xfocus_mobile/dummy.dart';
import 'package:xfocus_mobile/pages/server_json.dart';

final appRoutes = {
  '/': (context) => new LoginPage(),
  '/dashboard': (context) => new DashboardPage(title: "Dashboard"),
  '/preference': (context) => new PreferencePage(title: "Preference"),
  '/chart-example': (context) => new ChartExamplePage(title: "Chart Example"),
  '/table': (context) => new DataTableDemo(),
  '/getlocaljson': (context) => GetDummyJson(
        storage: DummyJson(),
      ),
  '/getserverjson': (context) => ServerJson(),
};
