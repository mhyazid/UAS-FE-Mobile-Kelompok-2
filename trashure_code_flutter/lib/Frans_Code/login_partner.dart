import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Navbar/screen_home.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Screen%20Customer%20LIst/screen_cl.dart';

class Login_Partner extends StatefulWidget {
  Login_Partner({super.key});

  @override
  State<Login_Partner> createState() => _Login_Partner_FormState();
}

class _Login_Partner_FormState extends State<Login_Partner> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white))),
          width: 320,
          child: Row(children: [
            Icon(Icons.mail_outline_rounded, color: Colors.white),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextField(
              style: TextStyle(
                  fontSize: 20, color: Colors.white, decorationThickness: 0),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email Address",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  )),
            ))
          ]),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white))),
          width: 320,
          child: Row(children: [
            Icon(Icons.lock_outline, color: Colors.white),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextField(
              obscureText: true,
              style: TextStyle(
                  fontSize: 20, color: Colors.white, decorationThickness: 0),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.white,
                  )),
            )),
            Icon(
              Icons.visibility,
              color: Colors.white,
            )
          ]),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: 320,
          child: Row(children: [
            Checkbox(
              value: remember,
              onChanged: (value) {
                setState(() {
                  remember = value!;
                });
              },
            ),
            Text(
              'Remember Password',
              style: TextStyle(color: Colors.white),
            ),
            Expanded(child: Container()),
            Text(
              "Forgot Password",
              style: TextStyle(color: Colors.lightGreen),
            )
          ]),
        ),
        SizedBox(height: 30),
        Container(
          width: 200,
          height: 50,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  backgroundColor: (Colors.white)),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ScreenCL();
                }));
              },
              child: Text(
                "Login",
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.trashure)),
              )),
        ),
      ],
    );
  }
}
