import 'dart:math';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PostCard extends StatefulWidget {
  int number;

  PostCard({super.key, required this.number});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard>{
  late int pageLength;
  int currentPageIndex = 0;
  final PageController _controller = PageController();

  List<String> testImageList=[
    'https://shopping-phinf.pstatic.net/main_3483285/34832852040.20221107123843.jpg?type=f300',
    'https://shopping-phinf.pstatic.net/main_2601344/26013446300.20210925025303.jpg?type=f300',
    'https://shopping-phinf.pstatic.net/main_8509321/85093216529.jpg?type=f300',
    'https://shopping-phinf.pstatic.net/main_3210375/32103751203.20220430105140.jpg?type=f300',
    'https://shopping-phinf.pstatic.net/main_2403217/24032174005.20200904023919.jpg?type=f300',
    'https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_3817901%2F38179017261.20230222203245.jpg&type=ff332_332',
    'https://shopping-phinf.pstatic.net/main_3793587/37935877302.20230315012810.jpg?type=f300',
    'https://shopping-phinf.pstatic.net/main_3568576/35685762326.20221107093402.jpg?type=f200',
    'https://shopping-phinf.pstatic.net/main_3715362/37153622827.20230309030706.jpg?type=f200',
    'https://shopping-phinf.pstatic.net/main_3873849/38738494419.20230318093910.jpg?type=f300',
  ];

  @override
  void initState() {
    pageLength=3+Random().nextInt(10);
    super.initState();
  }

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
            child: Row(
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
          AspectRatio(
            aspectRatio: 1,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                PageView.builder(
                  controller: _controller,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Image.network(testImageList[Random().nextInt(10)], fit: BoxFit.contain,),
                    );
                  },
                  itemCount: pageLength,
                  onPageChanged: (value) {
                    setState(() {
                      currentPageIndex=value;
                    });
                  },
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(500),
                  ),
                  child: Text('${currentPageIndex+1} / ${pageLength}', style: const TextStyle(color: Colors.white,),),
                )
              ],
            ),
          ),

          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Stack (
              alignment: Alignment.center,
              children: [
                 Row(
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

                    Icon(Icons.bookmark_border),
                  ],
                ),
                /*
                ScrollingPageIndicator(
                  controller: _controller,
                  itemCount: pageLength,
                  dotColor: Colors.grey,
                  dotSelectedColor: Colors.white,
                  dotSize: 8,
                  dotSelectedSize: 8,
                  dotSpacing: 12,
                  orientation: Axis.horizontal,
                ),
                 */
                SmoothPageIndicator(
                  controller: _controller,
                  count: pageLength,
                  effect: const WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    type: WormType.thin,
                    strokeWidth: 5,
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 40,
            width: MediaQuery.of(context).size.width,
            color : Colors.white,
            child:  Row(
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
            child:  Column(
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
            child:  Column(
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
