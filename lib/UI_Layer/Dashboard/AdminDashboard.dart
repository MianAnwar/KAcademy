import 'package:flutter/material.dart';
import 'package:kamaranacademy/UI_Layer/HomeScreen/homeScreen.dart';
import 'package:kamaranacademy/constants.dart';

class AdminDashboard extends StatefulWidget {
  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: m2BorderColor,
      body: AdminBody(),
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

class AdminBody extends StatelessWidget {
  const AdminBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Admin Deshboard"),
    );
  }
}
