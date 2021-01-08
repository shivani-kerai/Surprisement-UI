import 'package:Surprisement/ui/IntroScreen4.dart';
import 'package:flutter/material.dart';

class Intro3 extends StatefulWidget {
  @override
  _Intro3State createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
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
                  Navigator.pop(context);
                }),
              ),
            ),
            Center(
                child: Image.asset(
              "assets/Wallet.png",
              width: 150.0,
            )),
            Column(
              children: [
                Center(
                  child: Text(
                    "Encrypted",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 80.0, right: 80.0, top: 10.0, bottom: 10.0),
                  child: Center(
                    child: Text(
                      "Our new encrypted process makes it more secure between you and your bank",
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
                        MaterialPageRoute(builder: (context) => Intro4()));
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
