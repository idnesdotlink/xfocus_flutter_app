import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/barchart.dart';
import 'package:xfocus_mobile/components/line-chart.dart';
import 'package:xfocus_mobile/components/slider_behaviour.dart';
import 'package:xfocus_mobile/components/donut.dart';
import 'package:xfocus_mobile/components/simple_series_legend.dart';

class DashboardBody extends StatefulWidget {
  DashboardBodyState createState() => DashboardBodyState();
}

class DashboardBodyState extends State<DashboardBody> {
  @override
  Widget build(BuildContext context) {
    return new CustomScrollView(
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
    );
  }
}
