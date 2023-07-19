import 'package:flutter/material.dart';
import 'package:trashure_code_flutter/Frans_Code/login-Sign_partner.dart';
import 'package:trashure_code_flutter/Frans_Code/signup.dart';
import 'login.dart';

class Login_Sign extends StatefulWidget {
  const Login_Sign({super.key});

  @override
  State<Login_Sign> createState() => _Login_SignState();
}

class _Login_SignState extends State<Login_Sign> {
  var status = "login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.trashure,
      appBar: AppBar(
          elevation: 0,
          title: Row(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Login_Sign_Partner();
                    }));
                  },
                  child: Text(
                    "Login As Partner",
                    style: TextStyle(color: Colors.grey),
                  ))
            ],
          )),
      // appBar: AppBar(title: Text("trashure")),
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
                              color: Color.fromRGBO(153, 235, 60, 100),
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
                          "Sign-Up",
                          style: TextStyle(
                              color: Color.fromRGBO(153, 235, 60, 100),
                              decoration: status == "sign-up"
                                  ? TextDecoration.underline
                                  : null,
                              fontSize: 20),
                        ))
                  ],
                ),
              ),
              Container(child: status == "login" ? Login_Form() : Sign_Form()),
            ]),
      ),
    );
  }
}
