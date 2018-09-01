import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:xfocus_mobile/library/LocalJson.dart';

class GetLocal extends StatefulWidget {
  final LocalJson storage;

  GetLocal({Key key, this.storage}) : super(key: key);

  factory GetLocal.withDummyData() {
    return GetLocal(
      storage: LocalJson(),
    );
  }

  @override
  _GetLocalState createState() => _GetLocalState();
}

class _GetLocalState extends State<GetLocal> {
  int _counter;

  @override
  void initState() {
    super.initState();
    widget.storage.loadAsset().then((String value) {
      debugPrint('get value');
      debugPrint(value);
    });
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
