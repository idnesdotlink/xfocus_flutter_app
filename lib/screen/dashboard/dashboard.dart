import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app-drawer.dart';
import 'package:xfocus_mobile/components/info_box.dart';
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
              icon: Icon(Icons.settings),
              onPressed: () => _scaffoldKey.currentState.openDrawer()),
          actions: <Widget>[
          ],
        ),
        drawer: AppDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InfoBox(),
            Switch(
              value: _switchState,
              onChanged: (bool Value) {
                setState(() {
                  _switchState = Value;
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
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
