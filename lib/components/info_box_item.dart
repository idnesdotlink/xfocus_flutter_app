import 'package:flutter/material.dart';

class InfoBoxItem extends StatefulWidget {
  /// *components:InfoBoxItem*
  ///
  /// [test] test component InfoBoxItem
  InfoBoxItem(
      {Key key,
      this.title,
      this.percentage = 0.0,
      this.ammount = 0.0,
      this.color = Colors.white})
      : super(key: key);

  final String title;
  final double percentage;
  final double ammount;
  final Color color;
  @override
  _InfoBoxItemState createState() => new _InfoBoxItemState();
}

class _InfoBoxItemState extends State<InfoBoxItem> {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () => print('printing'),
      child: Container(
        width: 100.0,
        color: widget.color,
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(widget.title.toString()),
              new Text(widget.percentage.toString()),
              new Text(widget.ammount.toString()),
            ]),
      ),
    );
  }
}
