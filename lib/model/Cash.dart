class Post {
  final String title;
  final String displayTitle;
  final String ammount;
  final String percentage;

  Post({this.title, this.displayTitle, this.ammount, this.percentage});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      title: json['cash'],
      displayTitle: json['petty_cash'],
    );
  }
}

class PostList {
  final List<Post> posts;

  PostList({
    this.posts,
  });

  factory PostList.fromJson(List<dynamic> parsedJson) {
    List<Post> posts = List<Post>();
    posts = parsedJson.map((i) => Post.fromJson(i)).toList();
    return PostList(posts: posts);
  }
}
