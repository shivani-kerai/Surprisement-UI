import 'package:Surprisement/sign-in/SetPasswordScreen.dart';
import 'package:Surprisement/sign-in/SignUpScreen.dart';
import 'package:flutter/material.dart';

class Verifyaccount extends StatefulWidget {
  @override
  _VerifyaccountState createState() => _VerifyaccountState();
}

class _VerifyaccountState extends State<Verifyaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Signup()));
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text.rich(
                TextSpan(
                    text: "\nVerify\nAccount!!\n",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
                    children: [
                      TextSpan(
                          text:
                              "\n\nEnter 4-digit Code code we have sent to at\n",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                                text: 'shivani.kerai0015@gmail.com',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline))
                          ])
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5.0,
                              offset: Offset(3.0, 3.0),
                            )
                          ], borderRadius: BorderRadius.circular(5.0)),
                          child: TextField(
                            showCursor: false,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.teal.shade400,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.teal.shade400,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0)),
                                filled: true,
                                fillColor: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5.0,
                              offset: Offset(3.0, 3.0),
                            )
                          ], borderRadius: BorderRadius.circular(5.0)),
                          child: TextField(
                            showCursor: false,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.teal.shade400,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.teal.shade400,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0)),
                                filled: true,
                                fillColor: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5.0,
                              offset: Offset(3.0, 3.0),
                            )
                          ], borderRadius: BorderRadius.circular(5.0)),
                          child: TextField(
                            showCursor: false,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.teal.shade400,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.teal.shade400,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0)),
                                filled: true,
                                fillColor: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5.0,
                              offset: Offset(3.0, 3.0),
                            )
                          ], borderRadius: BorderRadius.circular(5.0)),
                          child: TextField(
                            showCursor: false,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.teal.shade400,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.teal.shade400,
                                    ),
                                    borderRadius: BorderRadius.circular(5.0)),
                                filled: true,
                                fillColor: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 200.0),
              child: Text.rich(
                TextSpan(
                    text:
                        "\nThis session will end in 60 seconds\nDidn't get code?\t",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                          text: 'Resend Code',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.teal,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline))
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.teal.shade400.withOpacity(0.5),
                        blurRadius: 20.0,
                        offset: Offset(5.0, 5.0))
                  ]),
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SetPassword()));
                      },
                      color: Colors.teal.shade400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(100.0, 15.0, 100.0, 15.0),
                        child: Text("Continue",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            )),
                      )),
                ),
              ),
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
