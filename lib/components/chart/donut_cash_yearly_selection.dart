import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SelectionCallback extends StatefulWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SelectionCallback(this.seriesList, {this.animate});

  factory SelectionCallback.withSampleData() {
    return new SelectionCallback(
      _createSampleData(),
      animate: false,
    );
  }

  @override
  State<StatefulWidget> createState() => new _SelectionCallbackState();

  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 100),
      new LinearSales(1, 75),
      new LinearSales(2, 25),
      new LinearSales(3, 5),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class _SelectionCallbackState extends State<SelectionCallback> {
  DateTime _time;
  Map<String, num> _measures;

  _onSelectionChanged(charts.SelectionModel model) {
    final selectedDatum = model.selectedDatum;
    if (selectedDatum.isNotEmpty) {
      debugPrint(selectedDatum.first.datum.year.toString());
    }
    /* final selectedDatum = model.selectedDatum;

    DateTime time;
    final measures = <String, num>{};

    if (selectedDatum.isNotEmpty) {
      time = selectedDatum.first.datum.time;
      selectedDatum.forEach((charts.SeriesDatum datumPair) {
        measures[datumPair.series.displayName] = datumPair.datum.sales;
      });
    }

    setState(() {
      _time = time;
      _measures = measures;
    }); */
  }

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      new SizedBox(
          height: 150.0,
          /* child: new charts.TimeSeriesChart(
            widget.seriesList,
            animate: widget.animate,
            selectionModels: [
              new charts.SelectionModelConfig(
                type: charts.SelectionModelType.info,
                listener: _onSelectionChanged,
              )
            ],
          ), */
          child: charts.PieChart(widget.seriesList,
        animate: widget.animate,
        selectionModels: [
              new charts.SelectionModelConfig(
                type: charts.SelectionModelType.info,
                listener: _onSelectionChanged,
              )
            ],
        behaviors: [
          
        ],
        // Configure the width of the pie slices to 60px. The remaining space in
        // the chart will be left as a hole in the center.
        defaultRenderer: new charts.ArcRendererConfig(
          arcWidth: 40,
          arcRendererDecorators: [new charts.ArcLabelDecorator()]
        )),
        ),
    ];

    if (_time != null) {
      children.add(new Padding(
          padding: new EdgeInsets.only(top: 5.0),
          child: new Text(_time.toString())));
    }
    _measures?.forEach((String series, num value) {
      children.add(new Text('$series: $value'));
    });

    return new Column(children: children);
  }
}

class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}