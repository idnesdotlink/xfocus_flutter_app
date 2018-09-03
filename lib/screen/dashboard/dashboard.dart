import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app-drawer.dart';
// import 'package:xfocus_mobile/components/info_box.dart';
import 'package:flutter/foundation.dart';
import 'card/cash.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key, this.title = ''}) : super(key: key);

  final String title;

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  var _switchState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        actions: <Widget>[],
      ),
      drawer: AppDrawer(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
              width: 100.0,
              height: 50.0,
              color: Colors.blue,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Text(
                        'Inventory',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Text(
                        'Inventory',
                      ),
                    ),
                  ),
                ],
              )),
          Switch(
            value: _switchState,
            onChanged: (bool value) {
              setState(() {
                _switchState = value;
              });
            },
          ),
          Expanded(
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.all(0.0),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      <Widget>[
                        CashCard(),
                        CashCard(),
                        CashCard(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
