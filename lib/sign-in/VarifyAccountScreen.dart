import 'package:Surprisement/sign-in/SignUpScreen.dart';
import 'package:flutter/material.dart';

class Varifyaccount extends StatefulWidget {
  @override
  _VarifyaccountState createState() => _VarifyaccountState();
}

class _VarifyaccountState extends State<Varifyaccount> {
  bool checkBoxValue = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate() {
    if (formkey.currentState.validate()) {
      print('please fill required field.');
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
                context, MaterialPageRoute(builder: (context) => Signup()));
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
                  "Verify Account!!",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
