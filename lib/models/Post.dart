import 'package:flutter/cupertino.dart';

class Post {
  String key;
  String title;
  String explain;
  String firstPicUrl;
  int firstPicWidth;
  int firstPicHeight;
  String authorName;
  int like;

  Post({
    required this.key,
    required this.title,
    required this.explain,
    required this.firstPicUrl,
    required this.firstPicWidth,
    required this.firstPicHeight,
    required this.authorName,
    required this.like
  });

  Post.fromJson(Map<String, dynamic> json)
      : key = json['key'],
        title = json['title'],
        explain = json['explain'],
        firstPicUrl = json['firstPicUrlkey'],
        firstPicWidth = json['firstPicWidth'],
        firstPicHeight = json['firstPicHeight'],
        authorName = json['authorName'],
        like = json['like'];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};

    data['key'] = key;
    data['title'] = title;
    data['explain'] = explain;
    data['firstPicUrl'] = firstPicUrl;
    data['firstPicWidth'] = firstPicWidth;
    data['firstPicHeight'] = firstPicHeight;
    data['authorName'] = authorName;
    data['like'] = like;

    return data;
  }
}