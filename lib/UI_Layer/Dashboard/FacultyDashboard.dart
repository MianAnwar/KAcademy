import 'package:flutter/material.dart';
import 'package:kamaranacademy/UI_Layer/HomeScreen/homeScreen.dart';
import 'package:kamaranacademy/constants.dart';

class FacultyDashboard extends StatefulWidget {
  @override
  _FacultyDashboardState createState() => _FacultyDashboardState();
}

class _FacultyDashboardState extends State<FacultyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mPrimaryTextColor,
      body: Center(
        child: Text("Faculty Deshboard"),
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
