import 'package:flutter/material.dart';
// import 'package:xfocus_mobile/config/app_routes.dart';

class AppDrawer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('App User Name'),
          accountEmail: Text('User Email'),
          currentAccountPicture:
              CircleAvatar(backgroundColor: Colors.grey, child: Text('U')),
          otherAccountsPictures: <Widget>[
            CircleAvatar(backgroundColor: Colors.grey, child: Text('U')),
          ],
        ),
        ListTile(
          title: Text('Dashboard'),
          trailing: Icon(Icons.dashboard),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/dashboard');
          },
        ),
        ListTile(
          title: Text('Dashboard 2'),
          trailing: Icon(Icons.dashboard),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/basic');
          },
        ),
         ListTile(
          title:  Text('Get Server Data'),
          trailing:  Icon(
            Icons.access_time,
            color: Colors.orange,
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/get_server');
          },
        ),
        /*  ListTile(
          title:  Text('Preference'),
          trailing:  Icon(Icons.desktop_windows),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/preference');
          },
        ),
         ListTile(
          title:  Text('Chart Example'),
          trailing:  Icon(Icons.desktop_windows),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/chart-example');
          },
        ),
         ListTile(
          title:  Text('Table'),
          trailing:  Icon(
            FontAwesomeIcons.signOutAlt,
            color: Colors.orange,
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/table');
          },
        ),
         ListTile(
          title:  Text('Get Local Data'),
          trailing:  Icon(
            FontAwesomeIcons.signOutAlt,
            color: Colors.orange,
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/getlocaljson');
          },
        ),
         ListTile(
          title:  Text('Picker'),
          trailing:  Icon(
            FontAwesomeIcons.signOutAlt,
            color: Colors.orange,
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/picker');
          },
        ),
         ListTile(
          title:  Text('Log Out'),
          trailing:  Icon(
            FontAwesomeIcons.signOutAlt,
            color: Colors.orange,
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/');
          },
        ), */
      ]),
    );
  }
}
