import 'package:Surprisement/ui/IntroScreen2.dart';
import 'package:Surprisement/ui/IntroScreen4.dart';
import 'package:Surprisement/ui/SplashScreen.dart';
import 'package:flutter/material.dart';

class Intro1 extends StatefulWidget {
  @override
  _Intro1State createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: BackButton(onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Splash()));
              }),
            ),
            Center(
                child: Image.asset(
              "assets/Calendar.png",
              width: 180.0,
            )),
            Column(
              children: [
                Center(
                  child: Text(
                    "Fast & Secure",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80.0, 10.0, 80.0, 10.0),
                  child: Center(
                    child: Text(
                      "Don't worry about 3rd party hacks,It's Fast and secure",
                      style: TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Intro2()));
                  },
                  color: Colors.teal.shade400,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 100.0, right: 100.0),
                    child: Text("Next",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        )),
                  )),
            ),
            Center(
                child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Intro4()));
              },
              child: Text(
                "Skip",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            )),
            Center(
                child: Image.asset(
              "assets/Rectangle1.png",
              width: 150.0,
            ))
          ],
        ),
      ),
    );
  }
}
