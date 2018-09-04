import 'package:flutter/material.dart';

class VersionOne extends AppBar {
  final List<Widget> actions;
  final String pageTitle;
  final Widget leading;
  VersionOne({
    Key key,
    this.actions,
    this.pageTitle,
    this.leading,
  }) : super(
          key: key,
          automaticallyImplyLeading: true,
          leading: leading,
          actions: actions,
          elevation: 0.0,
          title: Text(
            pageTitle,
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          backgroundColor: Colors.orange,
          centerTitle: true,
        );
}
