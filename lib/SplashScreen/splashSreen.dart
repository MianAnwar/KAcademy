import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kamaranacademy/HomeScreen/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    /////////////////////////////////////
    var d = Duration(seconds: 3);
    //
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomeScreen();
          },
        ),
        (route) => false,
      );
    });
    /////////////////////////////////////
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        /*
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assests/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        */
        child: Center(
          child: Image.asset('assests/images/logo.png'),
        ),
      ),
    );
  }
}
