import 'package:flutter/material.dart';
import 'LoginformCredentials.dart';
import 'WelcomeBack.dart';

class LoginBody extends StatefulWidget {
  LoginBody(this.loginOf);
  final String loginOf;

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          WelcomeBack(loginOf: this.widget.loginOf),
          //------------------------------------------------------------------//
          Container(
            color: Colors.deepOrange,
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: InputCredentials(loginOf: this.widget.loginOf),
          ),
          //------------------------------------------------------------------//

          SizedBox(height: 30),
          Center(
            child: Text(
              "Login to proceed\n if don\'t have account then Contact Admin\n if you forget your Password then contact Admin",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
