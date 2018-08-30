import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Future<Post> fetchPost() async {
  final response = await http.get(
    'http://10.0.2.2:9080/dummy',
    headers: {HttpHeaders.acceptEncodingHeader: 'gzip'},
  );
  final String data = utf8.decode(response.bodyBytes).toString();

  // final String data = response.body;

  var cmpr = jsonDecode(data);
  var cmp1 = cmpr[0];
  debugPrint(cmp1["title"].toString());

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    return Post.fromJson(json.decode(data));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

class Post {
  final String title;
  final String displayTitle;
  final int ammount;
  final int percentage;

  Post({this.title, this.displayTitle, this.ammount, this.percentage});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['title'],
      displayTitle: json['displayTitle'],
      ammount: json['ammount'],
      percentage: json['percentage'],
    );
  }
}

/* class Post {
  String _username;
  String _password;
  User(this._usn, this._password);

  User.map(dynamic obj) {
    this._username = obj["username"];
    this._password = obj["password"];
  }

  String get username => _username;
  String get password => _password;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["username"] = _username;
    map["password"] = _password;

    return map;
  }
} */

class ServerJson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<Post>(
          future: fetchPost(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.title);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
