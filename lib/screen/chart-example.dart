import 'package:flutter/material.dart';
// import 'package:xfocus_mobile/components/donut.dart';

class ChartExamplePage extends StatefulWidget {
  ChartExamplePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChartExamplePageState createState() => _ChartExamplePageState();
}

class _ChartExamplePageState extends State<ChartExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('text data'),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
