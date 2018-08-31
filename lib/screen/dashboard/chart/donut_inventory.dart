/// Donut chart with labels example. This is a simple pie chart with a hole in
/// the middle.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DonutInvetory extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  DonutInvetory(this.seriesList, {this.animate});

  factory DonutInvetory.withSampleData() {
    return  DonutInvetory(
      _createSampleData(),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
      children: <Widget>[
        Text('Inventory'),
Container(
        width: 200.0,
        height: 200.0,
        child: charts.PieChart(seriesList,
            animate: animate,
             defaultRenderer:  charts.ArcRendererConfig(
                arcWidth: 40,
                arcRendererDecorators: [ charts.ArcLabelDecorator()]))
    )
      ],
    ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearInventory, int>> _createSampleData() {
    final data = [
       LinearInventory(0, 100),
       LinearInventory(1, 75),
       LinearInventory(2, 25),
       LinearInventory(3, 5),
    ];

    return [
       charts.Series<LinearInventory, int>(
        id: 'Sales',
        domainFn: (LinearInventory sales, _) => sales.year,
        measureFn: (LinearInventory sales, _) => sales.sales,
        data: data,
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (LinearInventory row, _) => '${row.year}: ${row.sales}',
      )
    ];
  }
}

/// Sample linear data type.
class LinearInventory {
  final int year;
  final int sales;

  LinearInventory(this.year, this.sales);
}
