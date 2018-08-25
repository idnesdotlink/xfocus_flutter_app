import 'package:xfocus_flutter_app/pages/dashboard.dart';
import 'package:xfocus_flutter_app/pages/preference.dart';
final appRoutes = {
  '/': (context) => new DashboardPage(title: "Dashboard"),
  '/preference': (context) => new PreferencePage(title: "Preference"),
};