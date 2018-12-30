import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:xfocus_mobile/components/app_bar/primary_app_bar.dart';

class CalendarScreen3 extends StatefulWidget {
  CalendarScreen3({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CalendarScreen3State createState() => _CalendarScreen3State();
}

class _CalendarScreen3State extends State<CalendarScreen3> {
  DateTime _currentDate = DateTime(2018, 8, 1);
  // List<DateTime> _markedDate = [DateTime(2018, 9, 20), DateTime(2018, 10, 11)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        primaryAppBarTitle: 'Calendar',
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: CalendarCarousel(
          selectedDateTime: _currentDate,
          /* onDayPressed: (DateTime date) {
            this.setState(() => _currentDate = date);
          },
          weekendTextStyle: TextStyle(
            color: Colors.red,
          ),
          thisMonthDayBorderColor: Colors.grey,
//          weekDays: null, /// for pass null when you do not want to render weekDays
//          headerText: Container( /// Example for rendering custom header
//            child: Text('Custom Header'),
//          ),
          markedDates: _markedDate,
          height: 420.0,
          selectedDateTime: _currentDate,
          daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border */
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
