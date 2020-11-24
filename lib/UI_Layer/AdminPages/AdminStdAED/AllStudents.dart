import 'package:flutter/material.dart';
import 'package:kamaranacademy/UI_Layer/AdminPages/buildAppBar.dart';
import 'package:kamaranacademy/constants.dart';

class AllStudents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //////////////Sample Data//////////////
    List<String> cls = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12"
    ];
    List<String> stds = [
      "12",
      "22",
      "15",
      "12",
      "14",
      "12",
      "22",
      "15",
      "12",
      "14",
      "23",
      "3"
    ];
    //////////////Sample Data//////////////

    return Scaffold(
      backgroundColor: m2BorderColor,
      appBar: buildAddEditAppBar(context, "Students"),
      body: Center(
        child: ListView.builder(
          itemCount: cls.length,
          itemBuilder: (context, i) {
            return Card(
              color: Colors.black12,
              child: ListTile(
                leading: Icon(Icons.open_with, color: Colors.white),
                title: Row(
                  children: [
                    Expanded(
                        child: Text(
                      "Class  " + cls[i],
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontName,
                          fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: Text(
                      stds[i] + "-Students",
                      style:
                          TextStyle(color: Colors.white, fontFamily: fontName),
                    )),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.forward,
                    color: Colors.amber,
                  ),
                  onPressed: () {},
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
