import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app_bar/primary_app_bar.dart';
import 'package:meta/meta.dart';

class Home extends StatelessWidget {
  Home(
      {Key key,
      @required this.onSignin,
      @required this.onLogout,
      @required this.showLoading})
      : super(key: key);

  final VoidCallback onSignin;
  final VoidCallback onLogout;
  final bool showLoading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppBar(primaryAppBarTitle: 'Home'),
      body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                showLoading
                    ? CircularProgressIndicator()
                    : RaisedButton(
                        onPressed: this.onSignin,
                        child: Text("Sign In"),
                        color: Colors.lightBlueAccent,
                      ),
                //RaisedButton(onPressed: this.onLogout, child: Text("Logout"), color: Colors.amberAccent),
              ],
            ),
          )),
    );
  }
}
