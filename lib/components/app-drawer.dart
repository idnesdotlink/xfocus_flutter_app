import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppDrawer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(children: <Widget>[
        new UserAccountsDrawerHeader(
          accountName: new Text("App User Name"),
          accountEmail: new Text("User Email"),
          currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.grey, child: new Text("U")),
          otherAccountsPictures: <Widget>[
            new CircleAvatar(
                backgroundColor: Colors.grey, child: new Text("U")),
          ],
        ),
        new ListTile(
          title: new Text("Dashboard"),
          trailing: new Icon(Icons.dashboard),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/dashboard');
          },
        ),
        new ListTile(
          title: new Text('Preference'),
          trailing: new Icon(Icons.desktop_windows),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/preference');
          },
        ),
        new ListTile(
          title: new Text('Chart Example'),
          trailing: new Icon(Icons.desktop_windows),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/chart-example');
          },
        ),
        new ListTile(
          title: new Text('Table'),
          trailing: new Icon(
            FontAwesomeIcons.signOutAlt,
            color: Colors.orange,
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/table');
          },
        ),
        new ListTile(
          title: new Text('Get Local Data'),
          trailing: new Icon(
            FontAwesomeIcons.signOutAlt,
            color: Colors.orange,
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/getlocaljson');
          },
        ),
        new ListTile(
          title: new Text('Get Server Data'),
          trailing: new Icon(
            FontAwesomeIcons.signOutAlt,
            color: Colors.orange,
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/getserverjson');
          },
        ),
        new ListTile(
          title: new Text('Log Out'),
          trailing: new Icon(
            FontAwesomeIcons.signOutAlt,
            color: Colors.orange,
          ),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/');
          },
        )
      ]),
    );
  }
}
