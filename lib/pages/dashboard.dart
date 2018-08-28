import 'package:flutter/material.dart';
import 'package:xfocus_flutter_app/components/app-drawer.dart';
import 'package:xfocus_flutter_app/components/barchart.dart';
import 'package:xfocus_flutter_app/components/line-chart.dart';
import 'package:xfocus_flutter_app/components/slider-behaviour.dart';
import 'package:xfocus_flutter_app/components/donut.dart';
import 'package:xfocus_flutter_app/components/simple-series-legend.dart';
import 'package:xfocus_flutter_app/components/info_box.dart';
import 'package:flutter/foundation.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key, this.title = ''}) : super(key: key);

  final String title;

  @override
  _DashboardPageState createState() => new _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        appBar: new AppBar(
          title: new Text(widget.title),
          elevation: 0.0,
          leading: new IconButton(
              icon: new Icon(Icons.settings),
              onPressed: () => _scaffoldKey.currentState.openDrawer()),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // ...
              },
            ),
          ],
        ),
        drawer: new AppDrawer(),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InfoBox(),
            Expanded(
              child: new CustomScrollView(
                shrinkWrap: true,
                slivers: <Widget>[
                  new SliverPadding(
                    padding: const EdgeInsets.all(20.0),
                    sliver: new SliverList(
                      delegate: new SliverChildListDelegate(
                        <Widget>[
                          new MyBarChart(),
                          new SimpleSeriesLegend.withSampleData(),
                          new DonutAutoLabelChart.withSampleData(),
                          new SliderLine.withSampleData(),
                          new MyLineChart.withSampleData(),
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
