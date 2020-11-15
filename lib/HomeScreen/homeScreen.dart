import 'package:flutter/material.dart';
import 'Components/AdminButton.dart';
import 'Components/FacultyOrStudent.dart';
import 'Components/MainText.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image.asset('assests/images/academy.png'),

          // Sample Space
          SizedBox(height: 50),
          MainText(),

          // Sample Space
          SizedBox(height: 50),
          FacultyOrStudent(),
          AdminButton(),

          // Sample Space
          SizedBox(height: 60),
          Text(
            "Login to proceed\n if don\'t have account then Contact Admin",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
