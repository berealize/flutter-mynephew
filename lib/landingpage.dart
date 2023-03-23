import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mynephew/mainpage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LangingPageState createState() => _LangingPageState();
}

class _LangingPageState extends State<LandingPage>{
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      Get.offAll(MainPage());
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset('image/landing.png', /*fit: BoxFit.fitWidth*/),
          ),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }
}
