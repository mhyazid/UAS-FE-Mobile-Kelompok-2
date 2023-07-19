import 'package:flutter/material.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Navbar/screen_home.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "About Us",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(39, 79, 193, 1.0),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(children: [
              Text("Kelompok 2",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(63, 100, 235, 1))),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/frans.jpg'),
                      radius: 80,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "211111121",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Frans Yohanes Padang",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          '"Susah juga move on dari hubungan yang ga sampe jadian"',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "211112533",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Muhammad Hadyan Yazid",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          '"Informatika jurusanku, duduk didepan laptop keseharianku, mendapatkan error adalah makananku, biarkan aku memperbaikimu"',
                          textAlign: TextAlign.center,
                        )
                      ],
                    )),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/hadyan2.jpg'),
                      radius: 80,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/ananta.jpg'),
                      radius: 80,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "211111427",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Ananta Risyadsyah",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          '"Gaperlu tenar, gaperlu sangar yang penting rezeki lancar"',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
