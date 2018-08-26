import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class MyBarChart extends StatefulWidget {
  MyBarChart({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyBarChart createState() => new _MyBarChart();
}

class _MyBarChart extends State<MyBarChart> {

  int _counter = 0;

  @override
    Widget build(BuildContext context) {

    var data = [
      new ClicksPerYear('2016', 12, Colors.red),
      new ClicksPerYear('2017', 42, Colors.yellow),
      new ClicksPerYear('2018', _counter, Colors.green),
    ];

    var series = [
      new charts.Series(
        domainFn: (ClicksPerYear clickData, _) => clickData.year,
        measureFn: (ClicksPerYear clickData, _) => clickData.clicks,
        colorFn: (ClicksPerYear clickData, _) => clickData.color,
        id: 'Clicks',
        data: data,
      ),
    ];

    var chart = new charts.BarChart<ClicksPerYear>(
      series,
      animate: true,
    );
    var chartWidget = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 200.0,
        child: chart,
      ),
    );
    return chartWidget;
  }

}

class ClicksPerYear {
  final String year;
  final int clicks;
  final charts.Color color;

  ClicksPerYear(this.year, this.clicks, Color color)
      : this.color = new charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}