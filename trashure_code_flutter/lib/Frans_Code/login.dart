import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Navbar/screen_home.dart';

class Login_Form extends StatefulWidget {
  Login_Form({super.key});

  @override
  State<Login_Form> createState() => _Login_FormState();
}

class _Login_FormState extends State<Login_Form> {
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
            Icon(Icons.mail_outline_rounded,
                color: Color.fromRGBO(254, 253, 251, 100)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextField(
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(254, 253, 251, 100),
                  decorationThickness: 0),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email Address",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(254, 253, 251, 100),
                  )),
            ))
          ]),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white))),
          width: 320,
          child: Row(children: [
            Icon(Icons.lock_outline, color: Color.fromRGBO(254, 253, 251, 100)),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextField(
              obscureText: true,
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(254, 253, 251, 100),
                  decorationThickness: 0),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(254, 253, 251, 100),
                  )),
            )),
            Icon(
              Icons.visibility,
              color: Color.fromRGBO(254, 253, 251, 100),
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
              style: TextStyle(color: Colors.grey),
            ),
            Expanded(child: Container()),
            Text(
              "Forgot Password",
              style: TextStyle(color: Colors.blueAccent),
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
                  backgroundColor: (const Color.fromRGBO(254, 253, 251, 100))),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return ScreenHome();
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
