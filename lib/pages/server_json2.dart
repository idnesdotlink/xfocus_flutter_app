import 'package:flutter/material.dart';
import 'package:xfocus_mobile/fetch.dart';

class ServerJson extends StatefulWidget {
  ServerJsonState createState() => ServerJsonState();
}

class ServerJsonState extends State<ServerJson> {
  @override
  void initState() {
    super.initState();
    fetchPost().then((value) {
      debugPrint('get value from server');
      debugPrint(value.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('server json'),
      ),
      body: new Container(child: Text('get from server')),
    );
  }
}
