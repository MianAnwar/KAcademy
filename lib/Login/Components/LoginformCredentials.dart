import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputCredentials extends StatefulWidget {
  InputCredentials({
    Key key,
  }) : super(key: key);

  @override
  _InputCredentialsState createState() => _InputCredentialsState();
}

class _InputCredentialsState extends State<InputCredentials> {
  final _loginformKey = GlobalKey<FormState>();
  TextEditingController phoneNoCtrl = TextEditingController();
  TextEditingController pwdCtrl = TextEditingController();
  String phoneNo = "p";
  String pwd = "pd";

  bool phnoYes = false;
  bool pwdYes = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginformKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      this.phoneNo = value;
                    });
                  },
                  controller: phoneNoCtrl,
                  validator: (value) {
                    if (value.isEmpty) {
                      setState(() {
                        this.phnoYes = false;
                      });
                      return "Must sepecify your Phone Number!";
                    }
                    if (value.length != 11) {
                      setState(() {
                        this.phnoYes = false;
                      });
                      return "Enter phone of 0321 1234567 format.";
                    }
                    setState(() {
                      this.phnoYes = true;
                    });
                    return null;
                  },
                  style: TextStyle(color: Colors.white, fontSize: 21),
                  //-------------------------------------------------------------//
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  //-------------------------------------------------------------//
                  decoration: InputDecoration(
                    hintText: "Phone Number (03211234567)",
                    labelText: "Phone Number",
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white54),
                    errorStyle: TextStyle(color: Colors.black, fontSize: 14),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white54, width: 1.5),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 5),
                    ),
                  ),
                  //-------------------------------------------------------------//
                ),
              ),
              Expanded(
                child: phnoYes
                    ? Icon(Icons.verified, color: Colors.white)
                    : Icon(Icons.close),
              ),
            ],
          ),
          /////////////////////////////
          SizedBox(height: 10),
          /////////////////////////////
          Row(
            children: [
              Expanded(
                flex: 4,
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      this.pwd = value;
                    });
                  },
                  obscureText: true,
                  controller: pwdCtrl,
                  validator: (value) {
                    if (value.isEmpty) {
                      setState(() {
                        this.pwdYes = false;
                      });
                      return "Must sepecify your password!";
                    }
                    if (value.length < 6) {
                      setState(() {
                        this.pwdYes = false;
                      });
                      return "Enter password of correct length.";
                    }
                    setState(() {
                      this.pwdYes = true;
                    });
                    return null;
                  },
                  style: TextStyle(color: Colors.white, fontSize: 21),
                  //-------------------------------------------------------------//
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  //-------------------------------------------------------------//
                  decoration: InputDecoration(
                    hintText: "Enter yout Password",
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white54),
                    errorStyle: TextStyle(color: Colors.black, fontSize: 14),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white54, width: 1.5),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 5),
                    ),
                  ),
                  //-------------------------------------------------------------//
                ),
              ),
              Expanded(
                  child: pwdYes
                      ? Icon(Icons.verified, color: Colors.white)
                      : Icon(Icons.close)),
            ],
          ),
          /////////////////////////////
          SizedBox(height: 80),
          /////////////////////////////
          FlatButton(
            onPressed: () {
              setState(() {
                if (_loginformKey.currentState.validate()) {
                  // proceed to verify from DB system
                }
              });
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                )),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(29),
              side: BorderSide(color: Colors.white),
            ),
          ),
          //Text(this.phoneNo + ", " + this.pwd),
        ],
      ),
    );
  }
}
