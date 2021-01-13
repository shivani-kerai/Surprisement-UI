import 'package:Surprisement/sign-in/AccountCreatedScreen.dart';
import 'package:Surprisement/sign-in/VerifyAccountScreen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SetPassword extends StatefulWidget {
  @override
  _SetPasswordState createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  var password, val;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate() {
    if (formkey.currentState.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AccountCreated()));
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Verifyaccount()));
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text.rich(
                  TextSpan(
                      text: "\nSet\nPassword!!\n",
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.w900),
                      children: [
                        TextSpan(
                          text:
                              "\n\nPlease choose your Password\nThe Password should be at least 8 character long.",
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w400),
                        )
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                child: Text(
                  "Enter New Password",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Password',
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
                  obscureText: true,
                  onChanged: (val) => password = val,
                  textDirection: TextDirection.ltr,
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'password is required*'),
                    MinLengthValidator(8,
                        errorText: 'password must be at least 8 digits long'),
                    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
                        errorText:
                            'passwords must have at least one special character')
                  ])),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Repeate Password',
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
                obscureText: true,
                textDirection: TextDirection.ltr,
                validator: (val) =>
                    MatchValidator(errorText: 'Both Password should be match')
                        .validateMatch(val, password),
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
                        onPressed: validate,
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
