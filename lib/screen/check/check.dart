import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;
import 'package:xfocus_mobile/animations/slide_right_route.dart';
import 'package:xfocus_mobile/screen/intro/intro.dart';
import 'screen/websocket.dart';
import 'screen/socketio.dart';
import 'screen/localdata.dart';
import 'screen/sqlite.dart';
import 'screen/sharedpreference.dart';
import 'screen/deviceinfo.dart';

class CheckScreenItem extends StatelessWidget {
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
  CheckScreenItem({
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

class CheckScreen extends StatefulWidget{
  _CheckScreenState createState()=>  _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {

  void _goToScreen(context,  Widget screen) {
    Navigator.push(
      context,
      SlideRightRoute(
        widget: screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: VersionOne(pageTitle: 'Cek Fungsi',),
      body: ListView(
        children: <Widget>[
          CheckScreenItem(title: 'Intro Screen', onTap: () => _goToScreen(context, IntroScreen()),),
          CheckScreenItem(title: 'Websocket', onTap: () => _goToScreen(context, WebsocketScreen()),),
          CheckScreenItem(title: 'Socket IO', onTap: () => _goToScreen(context, SocketioScreen()),),
          CheckScreenItem(title: 'Local Json', onTap: () => _goToScreen(context, LocaldataScreen()),),
          CheckScreenItem(title: 'Sqlite', onTap: () => _goToScreen(context, SqliteScreen()),),
          CheckScreenItem(title: 'Device Info', onTap: () => _goToScreen(context, DeviceinfoScreen()),),
          CheckScreenItem(title: 'Shared Preference', onTap: () => _goToScreen(context, SharedpreferenceScreen()),),
          CheckScreenItem(title: 'Hello 8', onTap: () => print('hello 8'),),
          CheckScreenItem(
            title: 'Hello 9',
            onTap: () => print('hello 9'),
            bottomBorder: false,
          ),
        ]
      ),
    );
  }
}