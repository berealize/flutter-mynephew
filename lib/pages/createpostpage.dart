import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../mainpage.dart';
import '../models/Post.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  _CreatePostPageState createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage>{
  FirebaseFirestore fireStore=FirebaseFirestore.instance;

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  String postTitle= "";
  String content= "";

  String _chars = "AaBbCcDdEeFfGgHhUuJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890";
  Random _rnd = Random();

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))
  ));

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: const Text("포스팅 작성하기"),),
      body: Container(
          child: Column(
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '포스팅 제목',
                ),
                onChanged: (value) {
                  setState(() {
                    postTitle = value;
                  });
                },
              ),
              TextField(
                controller: contentController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '내용',
                ),
                maxLines: 10,
                onChanged: (value) {
                  setState(() {
                    content =value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  String postKey = getRandomString(16);

                  Post p = Post(key: postKey, title: postTitle, explain: content, firstPicUrl: "", firstPicWidth: 0, firstPicHeight: 0, authorName: "huni", like: 0);

                  fireStore.collection('Posts').doc(postKey).set(p.toJson());

                  fireStore.collection('Posts').doc(postKey).set({
                    "key":postKey,
                    "title":postTitle,
                    "explain":content,
                    "firstPicUrl":"",
                    "firstPicWidth":0,
                    "firstPicHeight":0,
                    "authorName":"huni",
                    "like":0,
                  });

                  Get.to(MainPage());
                },
                child: Text('업로드 하기'),
              ),
              ElevatedButton(
                onPressed: () {
                  fireStore.collection('Posts').doc('apple').delete();
                },
                child: Text('삭제하기'),
              )
            ],
          )
      ),
    );
  }
}
