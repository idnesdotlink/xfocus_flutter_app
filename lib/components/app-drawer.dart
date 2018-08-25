import 'package:flutter/material.dart';
class AppDrawer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("App User Name"),
              accountEmail: new Text("User Email"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: new Text("U")
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: new Text("U")
                ),
              ],
            ),
            new ListTile(
              title: new Text("Dashboard"),
              trailing: new Icon(Icons.dashboard),
            ),
            new ListTile(
              title: new Text("Master"),
              trailing: new Icon(Icons.restaurant_menu),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/preference');
              }
            ),
            new ListTile(
              title: new Text("Laporan"),
              trailing: new Icon(Icons.assessment),
            ),
            new ListTile(
              title: new Text("Chart"),
              trailing: new Icon(Icons.pie_chart)
            )            
          ]
        ),
      );
  }
}