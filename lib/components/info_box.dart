import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/info_box_item.dart';

class InfoBox extends StatefulWidget {
  InfoBoxState createState() => InfoBoxState();
}

class InfoBoxState extends State<InfoBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),  
        ),
        child:  GridView.count(
        crossAxisCount: 5,
        children: <Widget>[
           InfoBoxItem(
            title: 'Kas',
            percentage: 100.0,
            ammount: 100000.0,
            color: Colors.purple,
            isUp: false,
          ),
           InfoBoxItem(
            title: 'Sales',
            percentage: 100.0,
            ammount: 100000.0,
            color: Colors.blue,
          ),
           InfoBoxItem(
            title: 'Inventory',
            percentage: 100.0,
            ammount: 100000.0,
            color: Colors.pink,
          ),
           InfoBoxItem(
            title: 'A/R',
            percentage: 100.0,
            ammount: 100000.0,
            color: Colors.red,
            isUp: false,
          ),
           InfoBoxItem(
            title: 'A/P',
            percentage: 100.0,
            ammount: 100000.0,
            color: Colors.orange,
          ),
        ],
      ),
    ),
    );
  }
}
