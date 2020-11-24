import 'package:flutter/material.dart';
import 'package:kamaranacademy/UI_Layer/AdminPages/buildAppBar.dart';
import 'package:kamaranacademy/constants.dart';

class MarkDTestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: m2BorderColor,
      appBar: buildAddEditAppBar(context, "Daily Test"),
      body: Center(
        child: Text("Mark Daily Test!\nComing Soon..."),
      ),
    );
  }
}
