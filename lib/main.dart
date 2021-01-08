import 'package:Surprisement/ui/IntroScreen1.dart';
import 'package:Surprisement/ui/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Splash Screen',
        routes: <String, WidgetBuilder>{
          '/Intro1': (BuildContext context) => new Intro1(),
        },
        home: Splash());
  }
}
