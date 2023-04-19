import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MakePostPage extends StatefulWidget {
  const MakePostPage({super.key});

  @override
  _MakePostPageState createState() => _MakePostPageState();
}

class _MakePostPageState extends State<MakePostPage>{
  FirebaseFirestore fireStore=FirebaseFirestore.instance;

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  String postTitle= "";
  String content= "";

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: const Text("포트스 업로드 테스트"),),
      body: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(
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
            decoration: const InputDecoration(
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
                fireStore.collection('Posts').doc('apple').update({
                  "postTitle":postTitle,
                  "content":content,
                });
              },
              child: const Text('업로드 하기'),
          ),
          ElevatedButton(
            onPressed: () {
              fireStore.collection('Posts').doc('apple').delete();
            },
            child: const Text('삭제하기'),
          )
        ],
      ),
    );
  }
}
