/// Donut chart with labels example. This is a simple pie chart with a hole in
/// the middle.
import 'package:charts_flutter/flutter.dart' as FlutterChart;
import 'package:flutter/material.dart';

class DonutCash extends StatelessWidget {
  final List<FlutterChart.Series> seriesList;
  final bool animate;

  DonutCash(this.seriesList, {this.animate});

  factory DonutCash.withSampleData() {
    return  DonutCash(
      _createSampleData(),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
      children: <Widget>[
        Text('Kas'),
        Container(
          width: 200.0,
          height: 200.0,
          child: FlutterChart.PieChart(
            seriesList,
            animate: animate,
            defaultRenderer: FlutterChart.ArcRendererConfig(
              arcWidth: 60,
              arcRendererDecorators: [FlutterChart.ArcLabelDecorator()]
            ),
          ),
        ),
      ],
    ),
    );
  }

  static List<FlutterChart.Series<LinearCash, dynamic>> _createSampleData() {
    final data = [
      LinearCash('Kecil', 500),
      LinearCash('Besar', 7500),
    ];

    return [
      FlutterChart.Series<LinearCash, dynamic>(
        id: 'Cash',
        domainFn: (LinearCash sales, _) => sales.year,
        measureFn: (LinearCash sales, _) => sales.sales,
        data: data,
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (LinearCash row, _) => '${row.year}',
      )
    ];
  }
}

class LinearCash {
  var year;
  var sales;
  LinearCash(this.year, this.sales);
}
