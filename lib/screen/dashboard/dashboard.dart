import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xfocus_mobile/components/app_drawer.dart';
import 'package:xfocus_mobile/components/dashboard_icon.dart';
import 'package:xfocus_mobile/animations/slide_right_route.dart';
import 'package:xfocus_mobile/screen/cash/cash.dart';
import 'package:xfocus_mobile/screen/inventory/inventory.dart';
import 'package:xfocus_mobile/screen/account_payable/account_payable.dart';
import 'package:xfocus_mobile/screen/account_receivable/account_receivable.dart';
import 'package:xfocus_mobile/screen/help/help.dart';
import 'package:xfocus_mobile/screen/sales/sales.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key, this.title = ''}) : super(key: key);

  final String title;

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Options XFocus',
          style: TextStyle(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
            FontAwesomeIcons.bell,
            ),
            onPressed: () => {},
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        children: <Widget>[
          DashboardIcon(
            title: 'Kas Bank',
            icon: Icons.account_balance_wallet,
            onTap: () => Navigator.push(
              context,
              SlideRightRoute(
                widget: CashScreen(),
              ),
            ),
          ),
          DashboardIcon(
            title: 'Persediaan',
            icon: FontAwesomeIcons.phabricator,
            onTap: () => Navigator.push(
              context,
              SlideRightRoute(
                widget: InventoryScreen(),
              ),
            ),
          ),
          DashboardIcon(
            title: 'Penjualan',
            icon: Icons.shopping_cart,
            onTap: () => Navigator.push(
              context,
              SlideRightRoute(
                widget: SalesScreen(),
              ),
            ),
          ),
          DashboardIcon(
            title: 'A/P',
            icon: FontAwesomeIcons.moneyBillAlt,
            onTap: () => Navigator.push(
              context,
              SlideRightRoute(
                widget: AccountPayableScreen(),
              ),
            ),
          ),
          DashboardIcon(
            title: 'A/R',
            icon: FontAwesomeIcons.moneyBillAlt,
            onTap: () => Navigator.push(
              context,
              SlideRightRoute(
                widget: AccountReceivableScreen(),
              ),
            ),
          ),
          DashboardIcon(
            title: 'Help',
            icon: Icons.help,
            onTap: () => Navigator.push(
              context,
              SlideRightRoute(
                widget: HelpScreen(),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(9, 28, 79, 1.0), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}