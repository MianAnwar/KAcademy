import 'package:flutter/material.dart';
import 'LoginformCredentials.dart';
import 'WelcomeBack.dart';

class LoginBody extends StatelessWidget {
  LoginBody(this.loginOf);
  final String loginOf;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          WelcomeBack(loginOf: this.loginOf),
          //------------------------------------------------------------------//
          Container(
            color: Colors.deepOrange,
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            child: InputCredentials(),
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
