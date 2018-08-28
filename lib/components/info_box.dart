import 'package:flutter/material.dart';
import 'package:xfocus_flutter_app/components/info_box_item.dart';

class InfoBox extends StatefulWidget {
  InfoBoxState createState() => InfoBoxState();
}

class InfoBoxState extends State<InfoBox> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100.0,
      color: Colors.green,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new InfoBoxItem(
            title: 'Kas Bank',
            percentage: 100.0,
            ammount: 100000.0,
            color: Colors.purple,
          ),
          new InfoBoxItem(
            title: 'Penjualan',
            percentage: 100.0,
            ammount: 100000.0,
            color: Colors.green,
          ),
          new InfoBoxItem(
            title: 'Persediaan',
            percentage: 100.0,
            ammount: 100000.0,
            color: Colors.pink,
          ),
          new InfoBoxItem(
            title: 'A/R',
            percentage: 100.0,
            ammount: 100000.0,
            color: Colors.red,
          ),
          new InfoBoxItem(
            title: 'A/P',
            percentage: 100.0,
            ammount: 100000.0,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
