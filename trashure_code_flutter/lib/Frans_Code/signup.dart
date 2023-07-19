import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sign_Form extends StatefulWidget {
  const Sign_Form({super.key});

  @override
  State<Sign_Form> createState() => _Sign_FormState();
}

class _Sign_FormState extends State<Sign_Form> {
  @override
  bool tnc = false;
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
                  hintText: "Confirm Password",
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
        SizedBox(height: 30),
        Container(
            width: 320,
            child: Row(
              children: [
                Checkbox(
                  value: tnc,
                  onChanged: (value) {
                    setState(() {
                      tnc = value!;
                    });
                  },
                ),
                Text(
                  'Remember Password',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )),
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
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Sign Up Berhasil!"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("OK"))
                        ],
                      );
                    });
              },
              child: Text(
                "Sign-Up",
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.trashure)),
              )),
        )
      ],
    );
  }
}
