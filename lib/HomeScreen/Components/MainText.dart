import 'package:flutter/material.dart';
import 'package:kamaranacademy/constants.dart';

class MainText extends StatelessWidget {
  const MainText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Kamaran Academy\nScience & Commerce",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: mPrimaryTextColor,
        fontSize: 37.9,
        fontFamily: "RobotoBold",
      ),
    );
  }
}
