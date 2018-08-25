import 'package:flutter/material.dart';
import 'package:xfocus_flutter_app/components/app-drawer.dart';
class DashboardPage extends StatefulWidget {
  DashboardPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardPageState createState() => new _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _counter = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text(widget.title),
        elevation: 0.0,
        leading: new IconButton(icon: new Icon(Icons.settings),
          onPressed: () => _scaffoldKey.currentState.openDrawer()),
        actions: <Widget>[
          
        ],
      ),
      drawer: new AppDrawer(),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Hallo Ummiza Sayang',
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
