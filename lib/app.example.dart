import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Route _onRoute(RouteSettings settings) {
    final str = settings.name.split("/")[1];
    final index = int.parse(str, onError: (s) => 0);

    return MaterialPageRoute(
        builder: (BuildContext context) => Home(index: index));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Directionality(
          textDirection: TextDirection.ltr,
          child: MediaQuery(
            data: MediaQueryData(),
            child: AppBar(
              title: Text('App Bar Bottom'),
            ),
          ),
        ),
        Expanded(
          child: MaterialApp(
            title: 'Flutter Demo',
            onGenerateRoute: _onRoute,
          ),
        ),
      ],
    );
  }
}

class Home extends StatelessWidget {
  Home({Key key, this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("View ${index}"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("View ${index}"),
              FlatButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed("/${index + 1}"),
                  child: Text("Push"))
            ],
          ),
        ),
      );
}