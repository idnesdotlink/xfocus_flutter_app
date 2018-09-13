import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'data.dart';
import 'cash_model.dart';
import 'cash_data.dart';
import 'donut_chart.dart';

class CashScreen extends StatefulWidget {
  _CashScreenState createState() => _CashScreenState();
}

class CustomButton extends StatelessWidget {
  final String title;
  final onTap;

  CustomButton({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10.0),
      child: Container(
          child: Material(
            borderRadius: BorderRadius.all(
              Radius.circular(60.0),
            ),
            color: Colors.blue.withOpacity(0.7),
            child: InkWell(
              onTap: onTap,
              child: Container(
                height: 40.0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.0,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(60.0),
                    ),                    
                  ),
                  child: Center(
                    child: Text(
                      '$title',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ),
      ),
    );
  }
}

Widget _bottomColumn = Container(
  color: Color(0xFFb74093),
  height: 200.0,
  child: Column(children: <Widget>[
    Text(
      '',
      style: TextStyle(
        height: 1.5,
        fontSize: 30.0,
      ),
    ),
  ]),
);

class _CashScreenState extends State<CashScreen> {
  String _chartType = 'monthly';

  void _setChart(String type) {
    _chartType = type;
    setState(() {
          
    });
  }

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
          Container(
            child: DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.0,
                      style: BorderStyle.none,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(60.0),
                    ),                    
                  ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CustomButton(
                    title: 'Yearly',
                    onTap: () => _setChart('yearly'),
                  ),
                  CustomButton(
                    title: 'Monthly',
                    onTap: () => _setChart('monthly'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
  child: Container(
    color: Colors.white,
    child: AnimatedCircularChart(
  // ey: _chartKey,
  size: Size(250.0, 250.0),
  initialChartData: <CircularStackEntry>[
    new CircularStackEntry(
      <CircularSegmentEntry>[
        new CircularSegmentEntry(
          33.33,
          Colors.blue[400],
          rankKey: 'completed',
        ),
        new CircularSegmentEntry(
          66.67,
          Colors.blueGrey[600],
          rankKey: 'remaining',
        ),
      ],
      rankKey: 'progress',
    ),
  ],
  chartType: CircularChartType.Radial,
  percentageValues: true,
  holeLabel: _chartType,
  labelStyle: new TextStyle(
    color: Colors.blueGrey[600],
    fontWeight: FontWeight.bold,
    fontSize: 24.0,
  ),
), // Padding(
    // padding: EdgeInsets.all(20.0), child: DonutChart.withSampleData()),
  ),
          ),
          _bottomColumn,
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            String _cash = await LocalJson().loadCashSingle();
            CashData gbym = CashData.loadJsonString(_cash);
            print(gbym.getByYearMonth(2017, 3).cash);
            print(gbym.getByYearMonth(2018, 3).cash);
            // print((CashData.loadJsonString(_cash).getTotalYearCash(2017)/1000.0).round());
            print(CashData.loadJsonString(_cash).getMonthComparison());
          } catch (e) {
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
