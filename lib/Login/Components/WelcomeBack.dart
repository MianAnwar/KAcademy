import 'package:flutter/material.dart';
import 'package:kamaranacademy/constants.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({
    this.loginOf,
  });

  final String loginOf;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Text(
        loginOf + ", Welcome Back!",
        style: TextStyle(fontSize: 28, color: mySecondTextColor),
      ),
    );
  }
}
