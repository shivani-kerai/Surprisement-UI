import 'package:Surprisement/sign-in/VarifyAccountScreen.dart';
import 'package:Surprisement/ui/IntroScreen4.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool checkBoxValue = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState.validate() && checkBoxValue == true) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Varifyaccount()));
    } else {
      print('hello');
    }
  }

  String fieldvalidate(value) {
    if (value.isEmpty) {
      return "required";
    } else {
      return null;
    }
  }

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
                context, MaterialPageRoute(builder: (context) => Intro4()));
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 20.0),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  "Welcome!!",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
                ),
              ),
              Center(
                child: Text(
                  "Please provide following\ndetails for your new account",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                autocorrect: true,
                textDirection: TextDirection.ltr,
                validator: fieldvalidate,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Surname',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                autocorrect: true,
                textDirection: TextDirection.ltr,
                validator: fieldvalidate,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                autocorrect: true,
                textDirection: TextDirection.ltr,
                validator: fieldvalidate,
              ),
              Row(
                children: [
                  Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool value) {
                      print(value);
                      setState(() {
                        checkBoxValue = value;
                      });
                    },
                  ),
                  Expanded(
                      child: Text.rich(TextSpan(
                          text:
                              "By creating your account you have to agree\nwith our",
                          style: TextStyle(fontSize: 16.0),
                          children: <TextSpan>[
                        TextSpan(
                            text: " Terms",
                            style: TextStyle(
                                fontSize: 16.0,
                                decoration: TextDecoration.underline)),
                        TextSpan(text: " and"),
                        TextSpan(
                            text: " Conditions",
                            style: TextStyle(
                                fontSize: 16.0,
                                decoration: TextDecoration.underline))
                      ]))),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: BoxDecoration(boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.teal.shade400.withOpacity(0.5),
                              blurRadius: 20,
                              offset: Offset(5.0, 5.0))
                        ]),
                        child: RaisedButton(
                            onPressed: validate,
                            color: Colors.teal.shade400,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 88.0, right: 88.0),
                              child: Text("Let's Create an account",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white,
                                  )),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
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
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset('assets/Facebook.png', height: 30.0),
                              Text(
                                "Sign-Up with Facebook",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text.rich(
                    TextSpan(text: "Already have an account?-", children: [
                      TextSpan(
                          text: "Sign In",
                          style:
                              TextStyle(decoration: TextDecoration.underline))
                    ]),
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
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
      ),
    );
  }
}
