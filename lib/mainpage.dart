import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mynephew/mainpages/homescreen.dart';
import 'package:mynephew/mainpages/mylinkscreen.dart';
import 'package:mynephew/mainpages/myscreen.dart';
import 'package:mynephew/mainpages/showgridscreen.dart';
import 'package:mynephew/testpage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  int _selectedIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
        label: '홈',
        icon: Icon(Icons.home_filled),
    ),
    const BottomNavigationBarItem(
      label: '모아보기',
      icon: Icon(Icons.grid_view),
    ),
    const BottomNavigationBarItem(
      label: '내가 라이크 누른 컨텐츠',
      icon: Icon(Icons.favorite),
    ),
    const BottomNavigationBarItem(
      label: '내 페이지',
      icon: Icon(Icons.account_circle),
    ),
  ];

  List pages = [
    const HomeScreen(),
    const ShowGridScreen(),
    const MyLinkScreen(),
    const MyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            Get.to(const TestPage());
          },
          child: const Text('플루토 테스트그램', style: TextStyle(fontFamily: 'NanumPenScript', fontSize: 30, color: Colors.black,),),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 10,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: bottomItems
      ),
      body: pages[_selectedIndex],
    );
  }
}
