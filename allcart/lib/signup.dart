import 'package:flutter/material.dart';
import 'package:allcart/pages/Loading.dart';
import 'package:allcart/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  const Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email, password;
  bool _alertIsVisible = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('SIGN UP'),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'WELCOME',
                    style: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      fontFamily: 'GoblinOne',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: TextFormField(
                    obscureText: false,
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Provide an email';
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'ENTER NEW USER ID',
                      hintStyle: TextStyle(color: Colors.black26),
                      // filled: true,
                      // fillColor:
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                    onSaved: (input) => email = input,
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(height: size.height * 0.02),
                Center(
                  child: TextFormField(
                    obscureText: true,
                    validator: (input) {
                      if (input.length < 6) {
                        return 'Longer password please';
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'PASSWORD',
                      hintStyle: TextStyle(color: Colors.black26),
                      // filled: true,
                      // fillColor:
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        borderSide: BorderSide(color: Colors.green, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                    onSaved: (input) => password = input,
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0),
                            side: BorderSide(color: Colors.green))
                        //textStyle: TextStyle(fontSize: 24),
                        ),
                    onPressed: () {
                      signUp();
                    },
                    child: Text(
                      'CONFIRM',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ));
  }

  void signUp() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        _showMessage(context);
        // Navigator.pushReplacement(
        //     context, MaterialPageRoute(builder: (context) => Loading()));
      } catch (e) {
        print(e.message);
      }
    }
  }
  // Future<String> signUp({String email, String password}) async {
  //   if (_formKey.currentState.validate()) {
  //     _formKey.currentState.save();
  //     try {
  //       await FirebaseAuth.instance
  //           .createUserWithEmailAndPassword(email: email, password: password);
  //       _showMessage(context);
  //     } on FirebaseAuthException catch (e) {
  //       return e.message;
  //     }
  //   }
  // }

  void _showMessage(BuildContext context) {
    //button within alert
    Widget okButton = TextButton(
        onPressed: () {
          //Navigator.of(context).pop();
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => Loading()),
              (Route<dynamic> route) => false);
          this._alertIsVisible = false;
        },
        child: Text('OK'));
    //dialog box
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Successfully Signed up'),
            content: Text('Return to login page to continue'),
            actions: <Widget>[
              okButton,
            ],
            elevation: 05,
          );
        });
  }
}
