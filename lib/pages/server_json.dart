import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
// import 'package:archive/archive.dart';
// import 'package:archive/archive_io.dart';
// import 'dart:convert';

Future<Post> fetchPost() async {
  /* final response =
      await http.get('https://jsonplaceholder.typicode.com/posts/1'); */
  final response = await http.get(
    'http://10.0.2.2:9080/dummy',
    headers: {HttpHeaders.ACCEPT_ENCODING: 'gzip'},
  );

  // utf8.encode(response.body);
  // debugPrint(response.bodyBytes);
  debugPrint(response.body);

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON
    return Post.fromJson(json.decode(response.body));
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
