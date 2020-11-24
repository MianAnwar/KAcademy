import 'package:flutter/material.dart';
import 'package:kamaranacademy/UI_Layer/AdminPages/buildAppBar.dart';
import 'package:kamaranacademy/constants.dart';

class StudentMonthlyReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: m2BorderColor,
      appBar: buildAddEditAppBar(context, "Student Report"),
      body: Center(
        child: Text("Student Monthly Report!\nComing Soon..."),
      ),
    );
  }
}
