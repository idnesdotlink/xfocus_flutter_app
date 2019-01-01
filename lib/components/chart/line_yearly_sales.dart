/// Example of an ordinal combo chart with two series rendered as bars, and a
/// third rendered as a line.
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LineYearlySales extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  LineYearlySales(this.seriesList, {this.animate});

  factory LineYearlySales.withSampleData() {
    return LineYearlySales(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.OrdinalComboChart(
      seriesList,
      animate: animate,
      // Configure the default renderer as a bar renderer.
      defaultRenderer: charts.LineRendererConfig(),
      // Custom renderer configuration for the line series. This will be used for
      // any series that does not define a rendererIdKey.
      behaviors: [
        charts.SeriesLegend(),
        charts.LinePointHighlighter(
            showHorizontalFollowLine:
                charts.LinePointHighlighterFollowLineType.none,
            showVerticalFollowLine:
                charts.LinePointHighlighterFollowLineType.nearest),
      ],
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final tableSalesData = [
      OrdinalSales('Jan', 5),
      OrdinalSales('Feb', 25),
      OrdinalSales('Mar', 100),
      OrdinalSales('Apr', 75),
      OrdinalSales('May', 75),
      OrdinalSales('Jun', 85),
      OrdinalSales('Jul', 75),
      OrdinalSales('Ags', 65),
      OrdinalSales('Sep', 75),
      OrdinalSales('Okt', 85),
      OrdinalSales('Nov', 45),
      OrdinalSales('Des', 35),
    ];

    final mobileSalesData = [
      OrdinalSales('Jan', 15),
      OrdinalSales('Feb', 25),
      OrdinalSales('Mar', 80),
      OrdinalSales('Apr', 70),
      OrdinalSales('May', 55),
      OrdinalSales('Jun', 95),
      OrdinalSales('Jul', 65),
      OrdinalSales('Ags', 65),
      OrdinalSales('Sep', 85),
      OrdinalSales('Okt', 85),
      OrdinalSales('Nov', 55),
      OrdinalSales('Des', 55),
    ];

    return [
      charts.Series<OrdinalSales, String>(
          id: '2016-2017',
          colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: tableSalesData),
      charts.Series<OrdinalSales, String>(
          id: '2017-2018 ',
          colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: mobileSalesData),
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
