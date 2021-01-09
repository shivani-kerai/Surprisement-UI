import 'package:Surprisement/sign-in/SignUpScreen.dart';
import 'package:Surprisement/ui/IntroScreen3.dart';
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
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
              child: BackButton(onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Intro3()));
              }),
            ),
            Center(
                child: Image.asset(
              "assets/Logo white 1.png",
              width: 180.0,
            )),
            Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.teal.shade400.withOpacity(0.5),
                          blurRadius: 20,
                          offset: Offset(5.0, 5.0))
                    ]),
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        },
                        color: Colors.teal.shade400,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 100.0, right: 100.0),
                          child: Text("Let's Create an account",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                              )),
                        )),
                  ),
                ),
                Center(
                    child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Already have an account?-Sign In",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                )),
              ],
            ),
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
