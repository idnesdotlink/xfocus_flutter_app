import 'package:flutter/material.dart';
import '../screen/login.dart';
import '../screen/dashboard/dashboard.dart';
import '../screen/cash/cash.dart';
import '../screen/inventory/inventory.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => LoginPage(),
  '/dashboard': (context) => DashboardPage(title: 'Dashboard'),
  '/cash': (context) => CashScreen(),
  '/inventory': (context) => InventoryScreen(),
};
