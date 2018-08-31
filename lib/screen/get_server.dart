import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Future<PostList> fetchPost() async {
  final response = await http.get(
    'http://10.0.2.2:9080/dummy',
    headers: {HttpHeaders.acceptEncodingHeader: 'gzip'},
  );
  final String data = utf8.decode(response.bodyBytes).toString();

  if (response.statusCode == 200) {
    var x = PostList.fromJson(json.decode(data));
    // var x = json.decode(data).map((i)=>Post.fromJson(i)).toList();
    // debugPrint(x.post.displayTitle);
    return x;
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

class Post {
  final String title;
  final String displayTitle;
  final String ammount;
  final String percentage;

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

class PostList {
  final List<Post> posts;

  PostList({
    this.posts,
  });

  factory PostList.fromJson(List<dynamic> parsedJson) {
    List<Post> posts =  List<Post>();
    posts = parsedJson.map((i) => Post.fromJson(i)).toList();

    return  PostList(posts: posts);
  }
}

class GetServer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<PostList>(
          future: fetchPost(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.posts[0].title);
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
