import 'package:flutter/material.dart';
import 'package:xfocus_flutter_app/components/app-drawer.dart';
import 'package:xfocus_flutter_app/components/barchart.dart';
import 'package:xfocus_flutter_app/components/line-chart.dart';
import 'package:xfocus_flutter_app/components/slider-behaviour.dart';
import 'package:xfocus_flutter_app/components/donut.dart';
import 'package:xfocus_flutter_app/components/simple-series-legend.dart';
import 'package:xfocus_flutter_app/components/infobox.dart';
import 'package:flutter/foundation.dart';
class DashboardPage extends StatefulWidget {
  DashboardPage({Key key, this.title}) : super(key: key);

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
        leading: new IconButton(icon: new Icon(Icons.settings),
          onPressed: () => _scaffoldKey.currentState.openDrawer()),
        actions: <Widget>[
          
        ],
      ),
      drawer: new AppDrawer(),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
new Container(
  height: 100.0,
  color: Colors.green,
  child: new ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              new InfoBox(
                title: 'Kas Bank',
                percentage: 100.0,
                ammount: 100000.0,
                color: Colors.blue,
              ),
              new InfoBox(
                title: 'Penjualan',
                percentage: 100.0,
                ammount: 100000.0,
                color: Colors.green,
              ),
              new InfoBox(
                title: 'Persediaan',
                percentage: 100.0,
                ammount: 100000.0,
                color: Colors.pink,
              ),
              new InfoBox(
                title: 'A/R',
                percentage: 100.0,
                ammount: 100000.0,
                color: Colors.red,
              ),
              new InfoBox(
                title: 'A/P',
                percentage: 100.0,
                ammount: 100000.0,
                color: Colors.orange,
              ),
            ],
          ),
),
new Expanded(
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

      ],) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
