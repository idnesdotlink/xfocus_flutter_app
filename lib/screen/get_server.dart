import 'package:flutter/material.dart';
import 'package:xfocus_mobile/library/ServerJson.dart' show fetchPost;
import 'package:xfocus_mobile/model/Post.dart' show Post, PostList;

class GetServer extends StatefulWidget {
  GetServer({Key key}) : super(key: key);

  factory GetServer.withExample() {
    return GetServer();
  }

  _GetServer createState() => _GetServer();
}

class _GetServer extends State<GetServer> {
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
              final posts = snapshot.data.posts;
              Widget widget;
              try {
                widget = ListView(
                  children: posts.map<Widget>((Post post) {
                    return ListTile(
                      title: Text(post.title),
                    );
                  }).toList(),
                );
              } catch (error) {}
              return widget;
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
