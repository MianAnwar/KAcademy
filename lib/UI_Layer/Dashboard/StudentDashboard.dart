import 'package:flutter/material.dart';
import 'package:kamaranacademy/UI_Layer/HomeScreen/homeScreen.dart';
import 'package:kamaranacademy/constants.dart';

class StudentDashboard extends StatefulWidget {
  @override
  _StudentDashboardState createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mPrimaryColor,
      body: Center(
        child: Text("Student Deshboard"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) {
              return HomeScreen();
            }),
            (route) => false,
          );
        },
        label: Text("Logout"),
      ),
    );
  }
}
