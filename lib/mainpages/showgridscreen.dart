import 'package:flutter/material.dart';

class ShowGridScreen extends StatefulWidget {
  const ShowGridScreen({super.key});

  @override
  _ShowGridScreenState createState() => _ShowGridScreenState();
}

class _ShowGridScreenState extends State<ShowGridScreen>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('그리드스크린입니다.'),
    );
  }
}
