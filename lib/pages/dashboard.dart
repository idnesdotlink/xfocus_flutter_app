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
  Choice _selectedChoice = choices[0];
  void _select(Choice choice) {
    debugPrint(choice.toString());
    setState(
      () {
        _selectedChoice = choice;
      }
    );
  }
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
            /* new DropdownButton(
              items: <String>['A'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value)
                );
              }).toList(),
              onChanged: (_) {

              },
            ), */
            PopupMenuButton<Choice>(
              onSelected: _select,
              itemBuilder: (BuildContext context) {
                return choices.skip(2).map((Choice choice) {
                  return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              }
            )
          ],
        ),
        drawer: new AppDrawer(),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InfoBox(),
            Text(_selectedChoice.toString()),
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

class Choice {
  const Choice({ this.title, this.icon });
  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'car', icon: Icons.directions_car),
  const Choice(title: 'car', icon: Icons.directions_car),
  const Choice(title: 'car', icon: Icons.directions_car),
  const Choice(title: 'car', icon: Icons.directions_car),
  const Choice(title: 'car', icon: Icons.directions_car),
];