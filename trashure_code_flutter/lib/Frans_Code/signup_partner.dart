import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sign_Partner extends StatefulWidget {
  const Sign_Partner({super.key});

  @override
  State<Sign_Partner> createState() => _Sign_PartnerState();
}

class _Sign_PartnerState extends State<Sign_Partner> {
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
                  hintText: "Confirm Password",
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
                  style: TextStyle(color: Colors.white),
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
                  backgroundColor: (Colors.white)),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Register Berhasil!"),
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
                "Register",
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(color: Colors.trashure)),
              )),
        )
      ],
    );
  }
}
