
class Post{
  dynamic data;

  Post.fromJson(Map<String,dynamic> json):
      this.data=json['data'];
}