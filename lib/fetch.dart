import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  final response = await http.get(
    'http://10.0.2.2:9080/dummy',
    headers: {HttpHeaders.ACCEPT_ENCODING: 'gzip'},
  );
  final responseJson = json.decode(response.body);

  return Post.fromJson(responseJson);
}

class Post {
  final int title;
  final int displayTitle;
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
