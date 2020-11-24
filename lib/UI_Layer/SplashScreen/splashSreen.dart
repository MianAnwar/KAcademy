import 'package:flutter/material.dart';
import 'package:kamaranacademy/UI_Layer/HomeScreen/homeScreen.dart';
import 'package:kamaranacademy/constants.dart';

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
        // child: Center(
        //   child: Image.asset('assests/images/logo.png'),
        // ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Kamaran Academy\nScience & Commerce",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: mPrimaryTextColor,
                  fontSize: 40,
                  fontFamily: "RobotoBold",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Text.rich(
                  TextSpan(
                    text: "Special for ",
                    style: TextStyle(
                      fontSize: 19.0,
                    ),
                    children: [
                      TextSpan(
                        text: "Primary, Middle, Matric, Inter",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
