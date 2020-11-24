import 'package:flutter/material.dart';
import 'package:kamaranacademy/UI_Layer/AdminPages/buildAppBar.dart';
import 'package:kamaranacademy/constants.dart';

class TeachersAttendenceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: m2BorderColor,
      appBar: buildAddEditAppBar(context, "Teacher Attendence"),
      body: Center(
        child: Text("Teachers Attendence!\nComing Soon..."),
      ),
    );
  }
}
