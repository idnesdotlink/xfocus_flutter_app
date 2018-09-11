import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;
import 'package:xfocus_mobile/animations/slide_right_route.dart';
import 'package:xfocus_mobile/screen/intro/intro.dart';

class PrintScreenItem extends StatelessWidget {
  final String title;
  final onTap;
  final bool bottomBorder;
  final decoration = BoxDecoration(
    border: BorderDirectional(
    bottom: BorderSide(
      width: 0.5,
      color: Colors.grey.withOpacity(0.5),
      ),
    ),
  );
  PrintScreenItem({
    Key key,
    this.title,
    this.onTap,
    this.bottomBorder = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: onTap,
          child: Container(
            decoration: bottomBorder ? decoration : null,
            height: 70.0,
            child: Center(
              child: Text(
                '$title',
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PrintScreen extends StatefulWidget{
  _PrintScreenState createState()=>  _PrintScreenState();
}

class _PrintScreenState extends State<PrintScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: VersionOne(pageTitle: 'Cek Fungsi',),
      body: ListView(
        children: <Widget>[
          PrintScreenItem(
            title: 'Intro Screen',
            onTap: () => Navigator.push(
                          context,
                          SlideRightRoute(
                            widget: IntroScreen(),
                          ),
                        ),
          ),
          PrintScreenItem(title: 'Hello 2', onTap: () => print('hello 2'),),
          PrintScreenItem(title: 'Hello 3', onTap: () => print('hello 3'),),
          PrintScreenItem(title: 'Hello 4', onTap: () => print('hello 4'),),
          PrintScreenItem(title: 'Hello 5', onTap: () => print('hello 5'),),
          PrintScreenItem(title: 'Hello 6', onTap: () => print('hello 6'),),
          PrintScreenItem(title: 'Hello 7', onTap: () => print('hello 7'),),
          PrintScreenItem(title: 'Hello 8', onTap: () => print('hello 8'),),
          PrintScreenItem(
            title: 'Hello 9',
            onTap: () => print('hello 9'),
            bottomBorder: false,
          ),
        ]
      ),
    );
  }
}