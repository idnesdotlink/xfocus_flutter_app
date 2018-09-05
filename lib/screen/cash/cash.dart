import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;
import 'data.dart';
import 'cash_data.dart';
import 'donut_chart.dart';

class CashScreen extends StatefulWidget {
  _CashScreenState createState() => _CashScreenState();
}

Widget _topColumn = Container(
  color: Colors.red,
  height: 50.0,
  child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Text('Yearly'),
      Text('Monthly'),
    ],
  ),
);

Widget _middleColumn = Expanded(
  child: Container(
    color: Colors.white,
    child: Padding(
        padding: EdgeInsets.all(20.0), child: DonutChart.withSampleData()),
  ),
);

Widget _bottomColumn = Container(
  color: Color(0xFFb74093),
  height: 200.0,
  child: Column(children: <Widget>[
    Text('Text'),
  ]),
);

class _CashScreenState extends State<CashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey, // Color.fromRGBO(9, 28, 79, 1.0),
      appBar: VersionOne(
        pageTitle: 'Kas Bank',
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.bell,
            ),
            onPressed: () => {},
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _topColumn,
          _middleColumn,
          _bottomColumn,
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            String _cash = await LocalJson().loadCashSingle();
            print(CashData.loadJsonString(_cash).getByYearMonth(2017, 3).cash);
            print(CashData.loadJsonString(_cash).getTotalYearCash(2017));
          } catch(e) {
            debugPrint(e.toString());
          }
        },
        elevation: 0.0,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
