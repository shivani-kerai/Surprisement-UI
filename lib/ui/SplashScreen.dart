import 'dart:async';

import 'package:Surprisement/ui/IntroScreen1.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(child: Image.asset("assets/Surprised_face 1.png")),
        Center(
            child: Image.asset(
          "assets/Logo white 1.png",
          height: 200.0,
        )),
      ],
    ));
  }

  void startTime() {
    Future<Timer> startTime() async {
      var _duration = new Duration(seconds: 3);
      return new Timer(_duration, navigationPage);
    }
  }

  navigationPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Intro1()));
  }
}
