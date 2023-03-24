import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/flutter_launcher_icons_config.dart';

class PostCard extends StatefulWidget {
  int number;

  PostCard({super.key, required this.number});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard>{
  List<String> testImageList=[
    'https://shopping-phinf.pstatic.net/main_3483285/34832852040.20221107123843.jpg?type=f300',
    'https://shopping-phinf.pstatic.net/main_2601344/26013446300.20210925025303.jpg?type=f300',
    'https://shopping-phinf.pstatic.net/main_8509321/85093216529.jpg?type=f300',
    'https://shopping-phinf.pstatic.net/main_3210375/32103751203.20220430105140.jpg?type=f300',
    'https://shopping-phinf.pstatic.net/main_2403217/24032174005.20200904023919.jpg?type=f300'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            color : Colors.white,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                        backgroundImage: NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
                    ),
                    SizedBox(width: 5,),
                    Text('100sucoing'),
                  ],
                ),
                Icon(Icons.subject),
              ],
            ),
          ),
          Container(
            child: Image.network(testImageList[Random().nextInt(5)]),
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(width:7,),
                    Icon(Icons.chat_outlined,),
                    SizedBox(width:7,),
                    Icon(Icons.send),
                  ],
                ),
                SizedBox(width: 60, child: Text('indic'),),
                Icon(Icons.bookmark_border),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 40,
            width: MediaQuery.of(context).size.width,
            color : Colors.white,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:
              [
                Row(
                  children: [
                    Text('좋아요', style: TextStyle(fontWeight: FontWeight.bold), ),
                    SizedBox(width:4,),
                    Text('84', style: TextStyle(fontWeight: FontWeight.bold), ),
                    Text('개', style: TextStyle(fontWeight: FontWeight.bold), ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            color : Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:
              [
                Row(
                  children: [
                    Text('100sucoding', style: TextStyle(fontWeight: FontWeight.bold), ),
                    SizedBox(width:4,),
                    Text('제목을 적어주세요.'),
                  ],
                ),
                Column(
                  children: [
                    Text('내용을 적어주세요. 여러분들의 성원에 힘입어 아기아기 세트가 완판되었습니다., 4차 입고 예정중'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            color : Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:
              [
                Row(
                  children: [
                    Text('댓글', style: TextStyle(color: Colors.grey), ),
                    SizedBox(width:4, height: 40,),
                    Text('9', style: TextStyle(color: Colors.grey), ),
                    Text('개', style: TextStyle(color: Colors.grey), ),
                    SizedBox(width:8,),
                    Text('모두 보기', style: TextStyle(color: Colors.grey), ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('J0aojoSi', style: TextStyle(fontWeight: FontWeight.bold), ),
                            SizedBox(width:4,),
                            Text('써보니 진짜 너무 좋아요.'),
                          ],
                        ),
                        Icon(Icons.favorite_border, size: 15),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('SuperMom', style: TextStyle(fontWeight: FontWeight.bold), ),
                            SizedBox(width:4,),
                            Text('아기가 좋아하네요'),
                          ],
                        ),
                        Icon(Icons.favorite_border, size: 15),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:
                      [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage('https://search.pstatic.net/common/?src=http%3A%2F%2Fkinimage.naver.net%2F20200821_289%2F1597936446830hAi9h_JPEG%2Feac57ebb-68c4-44ae-92d7-c09d23fbf38c.jpg&type=f54_54'),
                            ),
                            SizedBox(width: 5,),
                            Text('댓글 달기...'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.favorite, color: Colors.red, size: 15),
                            SizedBox(width:7,),
                            Icon(Icons.accessibility_new, color: Colors.yellow, size: 15),
                            SizedBox(width:7,),
                            Icon(Icons.add_circle_outline, size: 15),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
