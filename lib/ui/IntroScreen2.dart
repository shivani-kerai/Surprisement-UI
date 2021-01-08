import 'package:Surprisement/ui/IntroScreen1.dart';
import 'package:Surprisement/ui/IntroScreen3.dart';
import 'package:Surprisement/ui/IntroScreen4.dart';
import 'package:flutter/material.dart';

class Intro2 extends StatefulWidget {
  @override
  _Intro2State createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: BackButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Intro1()));
                }),
              ),
            ),
            Center(
                child: Image.asset(
              "assets/Group 32.png",
              width: 150.0,
            )),
            Column(
              children: [
                Center(
                  child: Text(
                    "Easy To Use",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 80.0, right: 80.0, top: 10.0, bottom: 10.0),
                  child: Center(
                    child: Text(
                      "Manage your bank account,financial transaction,Its all easy like never before",
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
                        MaterialPageRoute(builder: (context) => Intro3()));
                  },
                  color: Colors.teal.shade400,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                    child: Text("Next",
                        style: TextStyle(fontSize: 20.0, color: Colors.white)),
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
                style: TextStyle(fontSize: 15, color: Colors.black),
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
