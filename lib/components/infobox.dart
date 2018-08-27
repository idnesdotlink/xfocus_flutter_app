import 'package:flutter/material.dart';
class InfoBox extends StatefulWidget {
  InfoBox({Key key, this.title, this.percentage, this.ammount, this.color}) : super(key: key);
  final String title;
  final percentage;
  final ammount;
  final color;
  @override
  _InfoBoxState createState() => new _InfoBoxState();
}
class _InfoBoxState extends State<InfoBox> {

@override
  Widget build(BuildContext context) {

    return new GestureDetector(
      onTap: () => print('printing'),
      child: Container(
        width: 200.0,
        color: widget.color,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.alarm, color: Colors.white,),
            new Text(widget.title.toString()),
            new Text(widget.percentage.toString()),
            new Text(widget.ammount.toString()),
          ]
        ),
      ),
    );
  }
}
