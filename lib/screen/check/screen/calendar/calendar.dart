import 'package:flutter/material.dart';
import 'package:date_range_picker/date_range_picker.dart' as DateRangePicker;
import 'package:xfocus_mobile/components/app_bar/primary_app_bar.dart';

class CalendarScreen extends StatefulWidget {
  CalendarScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(
        primaryAppBarTitle: 'Calendar2',
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: MaterialButton(
            color: Colors.deepOrangeAccent,
            onPressed: () async {
              final List<DateTime> picked =
                  await DateRangePicker.showDatePicker(
                      context: context,
                      initialFirstDate: DateTime.now(),
                      initialLastDate: (DateTime.now()).add(Duration(days: 7)),
                      firstDate: DateTime(2015),
                      lastDate: DateTime(2020));
              if (picked != null && picked.length == 2) {
                print(picked);
              }
            },
            child: Text("Pick date range")),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
