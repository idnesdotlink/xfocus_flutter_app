import 'package:flutter/material.dart';

class ApplicationBar extends StatefulWidget {
  ApplicationBar({Key key}) : super(key: key);

  @override
  _ApplicationBarState createState() => new _ApplicationBarState();
}

class _ApplicationBarState extends State<ApplicationBar> {
  @override
  Widget build(BuildContext context) {
    return new AppBar();
  }
}
