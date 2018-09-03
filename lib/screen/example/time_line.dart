import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/chart/line_yearly_sales.dart';
import 'package:xfocus_mobile/components/chart/donut_cash_yearly.dart';
import 'package:xfocus_mobile/components/chart/donut_cash_yearly_selection.dart';

class ExampleTimeLine extends StatefulWidget {
  ExampleTimeLine({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ExampleTimeLineState createState() => _ExampleTimeLineState();
}

class _ExampleTimeLineState extends State<ExampleTimeLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('text data'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                // child: LineYearlySales.withSampleData(),
                // child: DonutCashYearly.withSampleData(),
                child: SelectionCallback.withSampleData(),
              ),
            ),
            Container(
              height: 150.0,
              width: 100.0,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
