import 'package:flutter/material.dart';

AppBar buildAddEditAppBar(BuildContext context, String headMsg) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    centerTitle: true,
    title: Text(
      headMsg,
      style: TextStyle(fontSize: 50.0, fontFamily: "Signatra"),
    ),
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
        size: 30,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  );
}
