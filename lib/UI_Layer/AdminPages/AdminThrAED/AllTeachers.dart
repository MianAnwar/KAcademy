import 'package:flutter/material.dart';
import 'package:kamaranacademy/Objects_Layer/TeacherModel.dart';
import 'package:kamaranacademy/UI_Layer/AdminPages/AdminThrAED/AddEditThrScreen.dart';
import 'package:kamaranacademy/UI_Layer/AdminPages/buildAppBar.dart';
import 'package:kamaranacademy/constants.dart';

class AllTeachers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //////////////Sample Data//////////////
    List<String> teacherNames = [
      "Sir KauKab",
      "Sir Hamaza",
      "Sir Kamran",
      "Sir Nauman",
      "Sir Anwar"
    ];
    List<String> subjects = ["Chem", "Comp", "Math", "Phy", "Comp"];
    //////////////Sample Data//////////////

    return Scaffold(
      backgroundColor: m2BorderColor,
      appBar: buildAddEditAppBar(context, "Teachers"),
      body: Center(
        child: ListView.builder(
          itemCount: teacherNames.length,
          itemBuilder: (context, i) {
            return Card(
              color: Colors.black12,
              child: ListTile(
                leading: Icon(Icons.open_with, color: Colors.white),
                title: Row(
                  children: [
                    Expanded(
                        child: Text(
                      teacherNames[i],
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: fontName,
                          fontWeight: FontWeight.bold),
                    )),
                    Expanded(
                        child: Text(
                      subjects[i],
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return AddEditThrScreen(
                            headMsg: "Edit  Teacher",
                            thr: new Teacher(
                              teacherNames[i],
                              "FatherName",
                              "21",
                              "Chem",
                              "Bio",
                              "9",
                              "10",
                              "11",
                              "12",
                              "3520202323333",
                              "lhr",
                              "",
                              "03103345678",
                              "03344345695",
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
