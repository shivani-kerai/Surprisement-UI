import 'package:Surprisement/ui/IntroScreen1.dart';
import 'package:Surprisement/ui/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Splash Screen',
        routes: <String, WidgetBuilder>{
          '/Intro1': (BuildContext context) => new Intro1(),
        },
        home: Scaffold(
          body: Splash(),
        ));
  }
}
