import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/barchart.dart';

class PreferencePage extends StatefulWidget {
  PreferencePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PreferencePageState createState() => new _PreferencePageState();
}

class _PreferencePageState extends State<PreferencePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            new MyBarChart(
              initialCount: _counter,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
