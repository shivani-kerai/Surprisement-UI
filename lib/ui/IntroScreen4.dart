import 'package:flutter/material.dart';

class Intro4 extends StatefulWidget {
  @override
  _Intro4State createState() => _Intro4State();
}

class _Intro4State extends State<Intro4> {
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
              "assets/Logo white 1.png",
              width: 150.0,
            )),
            Center(
              child: RaisedButton(
                  onPressed: () {},
                  color: Colors.teal.shade400,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80.0, right: 80.0),
                    child: Text("Let's Create an account",
                        style: TextStyle(fontSize: 20.0, color: Colors.white)),
                  )),
            ),
            Center(
                child: TextButton(
              onPressed: () {},
              child: Text(
                "Already have an account?-Sign In",
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
