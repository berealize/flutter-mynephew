import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen>{
  @override
  Widget build(BuildContext context) {
    return const Text('마이스크린입니다.');
  }
}
