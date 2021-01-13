import 'package:Surprisement/sign-in/SetPasswordScreen.dart';
import 'package:flutter/material.dart';

class AccountCreated extends StatefulWidget {
  @override
  _AccountCreatedState createState() => _AccountCreatedState();
}

class _AccountCreatedState extends State<AccountCreated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: RaisedButton(
          elevation: 0.0,
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          color: Colors.transparent,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SetPassword()));
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      resizeToAvoidBottomPadding: true,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Center(
                child: Image.asset(
              "assets/Success Logo2.png",
              width: 180.0,
            )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text.rich(
                    TextSpan(
                        text: "\nAccount Created!\n",
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.w900),
                        children: [
                          TextSpan(
                            text:
                                "\n\nDear user your account has been created\nsuccessfully.Sign in to start using app\n",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w400),
                          )
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0, top: 200.0),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.teal.shade400.withOpacity(0.5),
                            blurRadius: 20.0,
                            offset: Offset(5.0, 5.0))
                      ]),
                      child: RaisedButton(
                          onPressed: () {},
                          color: Colors.teal.shade400,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                100.0, 15.0, 100.0, 15.0),
                            child: Text("Continue",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                )),
                          )),
                    ),
                  ),
                ),
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
