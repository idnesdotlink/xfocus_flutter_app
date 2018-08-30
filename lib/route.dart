import 'package:xfocus_mobile/screen/login.dart';
import 'package:xfocus_mobile/screen/dashboard/dashboard.dart';
import 'package:xfocus_mobile/screen/preference.dart';
import 'package:xfocus_mobile/screen/chart-example.dart';
import 'package:xfocus_mobile/screen/table.dart';
import 'package:xfocus_mobile/screen/get_dummy_json.dart';
import 'package:xfocus_mobile/dummy.dart';
import 'package:xfocus_mobile/screen/server_json.dart';

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
