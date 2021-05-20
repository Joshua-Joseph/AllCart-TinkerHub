import 'package:flutter/material.dart';
import 'package:allcart/pages/Home.dart';
import 'package:allcart/authentication_service.dart';
import 'package:provider/provider.dart';
import 'package:allcart/signup.dart';

class Loading extends StatefulWidget {
  const Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  //bool _submitPressed = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text(
            'ALL  CART',
            style: TextStyle(fontFamily: 'PlayfairDisplaySC'),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.lightGreen[700],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/allcart-logo.png'),
                  radius: 60.0,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              // Divider(
              //   height: 40.0,
              //   color: Colors.amberAccent,
              // ),
              Center(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      fontFamily: 'GoblinOne'),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Center(
                child: TextField(
                  obscureText: false,
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'USER ID',
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
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Center(
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
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
                ),
              ),
              SizedBox(height: size.height * 0.04),
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
                    context.read<AuthenticationService>().signIn(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim());
                    // Navigator.push(context,
                    //     new MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
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
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ))
            ],
          ),
        ));
  }
}
