import 'package:Surprisement/sign-in/VerifyAccountScreen.dart';
import 'package:Surprisement/ui/IntroScreen4.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool checkBoxValue = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  validate() {
    if (formkey.currentState.validate() && checkBoxValue == true) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Verifyaccount()));
    } else if (formkey.currentState.validate() && checkBoxValue == false) {
      return showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text(
                'You have to agree with our\nterms and conditions!!!',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              backgroundColor: Colors.black,
              actions: <Widget>[
                TextButton(
                  child: Text(
                    'OK',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellowAccent[100]),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
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
        padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
        child: Form(
          key: formkey,
          // ignore: deprecated_member_use
          autovalidate: true,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  "Welcome!",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child: Text(
                    "Please provide following\ndetails for your new account",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(20.0)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.teal)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.teal)),
                    filled: true,
                    fillColor: Colors.white),
                autocorrect: true,
                textDirection: TextDirection.ltr,
                validator: RequiredValidator(errorText: 'Required*'),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Surname',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(20.0)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.teal)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.teal)),
                    filled: true,
                    fillColor: Colors.white),
                autocorrect: true,
                textDirection: TextDirection.ltr,
                validator: RequiredValidator(errorText: 'Required*'),
              ),
              TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal),
                          borderRadius: BorderRadius.circular(20.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.teal)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.teal)),
                      filled: true,
                      fillColor: Colors.white),
                  autocorrect: true,
                  textDirection: TextDirection.ltr,
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'Required*'),
                    EmailValidator(errorText: 'enter a valid email address')
                  ])),
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
                              "By creating your account you have to agree\nwith our\t",
                          style: TextStyle(fontSize: 16.0),
                          children: <TextSpan>[
                        TextSpan(
                            text: "Terms",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline)),
                        TextSpan(text: "\tand\t"),
                        TextSpan(
                            text: "Conditions.",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline))
                      ]))),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                              padding: const EdgeInsets.fromLTRB(
                                  88.0, 16.0, 88.0, 16.0),
                              child: SizedBox(
                                child: Text("Let's Create an account",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    )),
                              ),
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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset('assets/Facebook.png',
                                    height: 30.0),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60.0),
                                  child: Text(
                                    "Sign-Up with Facebook",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 60.0),
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
