import 'package:flutter/material.dart';
// import 'package:xfocus_mobile/components/donut.dart';

class ChartExamplePage extends StatefulWidget {
  ChartExamplePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChartExamplePageState createState() => new _ChartExamplePageState();
}

class _ChartExamplePageState extends State<ChartExamplePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('text data'),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
