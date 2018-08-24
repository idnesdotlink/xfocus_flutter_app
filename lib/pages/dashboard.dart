import 'package:flutter/material.dart';
import './login.dart';
import './preference.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardPageState createState() => new _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        elevation: 0.0,        
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("User Name"),
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
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new PreferencePage(title: "Preference")
                  )
                );
                // new PreferencePage(title: 'Options XFocus Apps');
              },
            ),
            new ListTile(
              title: new Text("Master"),
              trailing: new Icon(Icons.restaurant_menu),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  new MaterialPageRoute(
                    builder: (BuildContext context) => new LoginPage(title: "Login Page")
                  )
                );
                // new PreferencePage(title: 'Options XFocus Apps');
              },
            ),
            new ListTile(
              title: new Text("Laporan"),
              trailing: new Icon(Icons.assessment)
            ),
            new ListTile(
              title: new Text("Chart"),
              trailing: new Icon(Icons.pie_chart)
            )            
          ]
        ),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        elevation: 0.0,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
