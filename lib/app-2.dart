import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('page 1'),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('page 2'),
    );
  }
}

final wht = {
  'page1': Page1(),
  'page2': Page2(),
};

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class Top extends StatefulWidget{
  _TopState createState()=>  _TopState();
}


class _TopState extends State<Top> {
  String page = "page1";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(child: DrawerHeader(child: Container())),
            Container (
              child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('Page 1'),
                      leading: Icon(Icons.pages),
                      onTap:(){
                          Navigator.of(context).pop();
                          setState((){
                            page = "page1";
                          });
                      },
                    ),
                    ListTile(
                      title: Text('Page 2'),
                      leading: Icon(Icons.pages),
                      onTap:(){
                        Navigator.of(context).pop();
                        setState((){
                          page = "page2";
                        });
                      },
                    ),
                  ]
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text("Test Page"),),
      body: wht[page]
    );
  }
}
class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Top(),
    );
  }
}
