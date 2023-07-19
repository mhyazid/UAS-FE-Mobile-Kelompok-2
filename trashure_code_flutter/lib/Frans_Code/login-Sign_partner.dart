import 'package:flutter/material.dart';
import 'package:trashure_code_flutter/Frans_Code/login_partner.dart';
import 'package:trashure_code_flutter/Frans_Code/signup.dart';
import 'package:trashure_code_flutter/Frans_Code/signup_partner.dart';
import 'login.dart';

class Login_Sign_Partner extends StatefulWidget {
  const Login_Sign_Partner({super.key});

  @override
  State<Login_Sign_Partner> createState() => _Login_Sign_PartnerState();
}

class _Login_Sign_PartnerState extends State<Login_Sign_Partner> {
  var status = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      backgroundColor: Colors.trashure,
      body: SingleChildScrollView(
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.only(top: 50),
                  // height: 229,
                  // color: Colors.deepOrangeAccent,
                  child: Image.asset(
                    "assets/logo final.jpg",
                    cacheHeight: 229,
                  )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            status = "login";
                            print(status);
                          });
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.lightGreen,
                              decoration: status == "login"
                                  ? TextDecoration.underline
                                  : null,
                              fontSize: 20),
                        )),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            status = "sign-up";
                            print(status);
                          });
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.lightGreen,
                              decoration: status == "sign-up"
                                  ? TextDecoration.underline
                                  : null,
                              fontSize: 20),
                        ))
                  ],
                ),
              ),
              Container(
                  child: status == "login" ? Login_Partner() : Sign_Partner()),
            ]),
      ),
    );
  }
}
