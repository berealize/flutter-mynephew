import 'package:flutter/material.dart';
import 'package:mynephew/cards/postcard.dart';
import 'package:get/get.dart';

import '../pages/createpostpage.dart';
import '../models/Post.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  FirebaseFirestore fireStore=FirebaseFirestore.instance;

  int count=10;

  @override
  Widget build(BuildContext context) {
    return Stack (
      alignment: Alignment.bottomRight,
      children: [
        Container(
          child: ListView.separated(
          itemCount: count,
            itemBuilder: (BuildContext context, int index) {
              return PostCard(
                  number: index
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 20,);
            },
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(CreatePostPage());
          },
          child: Container(
            margin: EdgeInsets.all(15),
            width: 50,
            height: 50,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              color: Colors.orange.withOpacity(0.3),
            ),
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
