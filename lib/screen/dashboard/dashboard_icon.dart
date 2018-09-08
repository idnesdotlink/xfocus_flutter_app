import 'package:flutter/material.dart';

class DashboardIcon extends StatelessWidget {
  final String title;
  final onTap;
  final IconData icon;

  DashboardIcon({@required this.title, this.icon, this.onTap}) : super();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              (this.icon == null) ? Icons.access_alarms : this.icon,
              color: Colors.black.withOpacity(0.3),
              size: 60.0,
            ),
            Text(this.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  // package: ,
                  fontSize: 16.0,
                  fontFamily: 'Roboto',
                  color: Colors.orange,
                )),
          ],
        ),
      ),
    );
  }
}
