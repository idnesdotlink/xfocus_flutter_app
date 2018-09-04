import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xfocus_mobile/components/app_drawer.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key, this.title = ''}) : super(key: key);

  final String title;

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class DashboardIcon extends StatelessWidget {
  final String title;
  final onTap;
  final IconData icon;
  
  DashboardIcon({ @required this.title, this.icon, this.onTap }) : super();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        height: 150.0,
        width: 150.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              (this.icon == null) ? Icons.access_alarms : this.icon,
              color: Colors.white,
              size: 60.0,
            ),
            Text(
              this.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                // package: ,
                fontSize: 18.0,
                fontFamily: 'Roboto',
                color: Colors.orange,
              )
            ),
          ],
        ),
      ),
    );
  }
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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.spaceEvenly,
                runAlignment: WrapAlignment.start,
                children: <Widget>[
                  DashboardIcon(
                    title: 'Kas Bank',
                    icon: Icons.account_balance_wallet,
                    onTap: () {
                      Navigator.of(context).pushNamed('/cash');
                      debugPrint('on tap');
                    },
                  ),
                  DashboardIcon(
                    title: 'Persediaan',
                    icon: FontAwesomeIcons.phabricator,
                    onTap: () {
                      debugPrint('on tap');
                    },
                  ),
                  DashboardIcon(
                    title: 'Penjualan',
                    icon: Icons.shopping_cart,
                    onTap: () {
                      debugPrint('on tap');
                    },
                  ),
                  DashboardIcon(
                    title: 'A/P',
                    icon: FontAwesomeIcons.moneyBillAlt,
                    onTap: () {
                      debugPrint('on tap');
                    },
                  ),
                  DashboardIcon(
                    title: 'A/R',
                    icon: FontAwesomeIcons.moneyBillAlt,
                    onTap: () {
                      debugPrint('on tap');
                    },
                  ),
                  DashboardIcon(
                    title: 'Help',
                    icon: Icons.help,
                    onTap: () {
                      debugPrint('on tap');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}