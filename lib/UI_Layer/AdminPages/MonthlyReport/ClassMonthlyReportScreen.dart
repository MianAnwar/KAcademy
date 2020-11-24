import 'package:flutter/material.dart';
import 'package:kamaranacademy/UI_Layer/AdminPages/buildAppBar.dart';
import 'package:kamaranacademy/constants.dart';

class ClassMonthlyReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: m2BorderColor,
      appBar: buildAddEditAppBar(context, "Monthly Report"),
      body: Center(
        child: Text("Class Monthly Report!\nComing Soon..."),
      ),
    );
  }
}
