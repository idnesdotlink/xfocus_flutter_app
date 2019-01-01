import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DonutCashYearlySelection extends StatefulWidget {
  final List<charts.Series> seriesList;
  final bool animate;
  final onSelected;

  DonutCashYearlySelection(this.seriesList, {this.animate, this.onSelected});

  factory DonutCashYearlySelection.withSampleData() {
    return DonutCashYearlySelection(
      _createSampleData(),
      animate: false,
    );
  }

  @override
  State<StatefulWidget> createState() => _DonutCashYearlySelectionState();

  static List<charts.Series<LinearSales, dynamic>> _createSampleData() {
    return sampleData();
  }
}

class _DonutCashYearlySelectionState extends State<DonutCashYearlySelection> {
  _onSelectionChanged(charts.SelectionModel model) {
    final selectedDatum = model.selectedDatum;
    if (selectedDatum.isNotEmpty) {
      debugPrint(selectedDatum.first.datum.year.toString());
      if (widget.onSelected != null) {
        return widget.onSelected(selectedDatum.first.datum);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var chart = charts.PieChart(
      widget.seriesList,
      animate: widget.animate,
      selectionModels: [
        charts.SelectionModelConfig(
          type: charts.SelectionModelType.info,
          changedListener: _onSelectionChanged,
        ),
      ],
      defaultRenderer: charts.ArcRendererConfig(
        arcWidth: 100,
        arcRendererDecorators: [
          charts.ArcLabelDecorator(),
        ],
      ),
    );
    return chart;
  }
}

List<charts.Series<LinearSales, dynamic>> sampleData() {
  final data = [
    LinearSales('Kas', 10000000),
    LinearSales('Kas Kecil', 500000),
  ];

  return [
    charts.Series<LinearSales, dynamic>(
      id: 'Sales',
      domainFn: (LinearSales sales, _) => sales.year,
      measureFn: (LinearSales sales, _) => sales.sales,
      data: data,
    )
  ];
}

class LinearSales {
  final String year;
  final int sales;

  LinearSales(this.year, this.sales);
}
