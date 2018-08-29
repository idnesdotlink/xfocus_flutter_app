import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:xfocus_mobile/dummy.dart';
class GetDummyJson extends StatefulWidget {
  final DummyJson storage;

  GetDummyJson({Key key, @required this.storage}) : super(key: key);

  @override
  _GetDummyJsonState createState() => _GetDummyJsonState();
}

class _GetDummyJsonState extends State<GetDummyJson> {
  int _counter;

  @override
  void initState() {
    super.initState();
    widget.storage.loadAsset().then(
      (String value) {
        debugPrint(value);
      }
    );
    widget.storage.readCounter().then((int value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _incrementCounter() async {
    setState(() {
      _counter++;
    });

    // write the variable as a string to the file
    return widget.storage.writeCounter(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reading and Writing Files')),
      body: Center(
        child: Text(
          'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}