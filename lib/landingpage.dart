import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LangingPageState createState() => _LangingPageState();
}

class _LangingPageState extends State<LandingPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset('image/photo.jpg', fit: BoxFit.cover),
      ),
    );
  }
}
