import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Navbar/screen_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              "Welcome, Guest!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 230,
              child: Image.asset("assets/images/image 1.png",
                  alignment: Alignment.topCenter),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/icons/navbar1.png"),
                            Text(
                              "Call To Dump",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/icons/navbar2.png",
                            ),
                            Text(
                              "Trash Is Ready",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/icons/navbar4.png"),
                            Text(
                              "Cash Or Duel",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Image.asset("assets/icons/navbar5.png"),
                              Text(
                                "Trash For Trash",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ]),
            )
          ],
        )),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 130,
                margin: EdgeInsets.only(top: 0),
                child: DrawerHeader(
                    // decoration: BoxDecoration(color: Colors.cyan),
                    child: Column(
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            child: Image.asset("assets/images/Group 19.png")),
                        // Text("Welcome, Guest!"),
                        Text("Welcome, Guest!")
                      ],
                    ),
                  ],
                )),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(start: 10, end: 10),
                child: Column(children: [
                  ListTile(
                    tileColor: Color(0xFF9595FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    visualDensity: VisualDensity(vertical: -4),
                    leading: Icon(Icons.home,
                        color: Color.fromARGB(255, 16, 132, 226)),
                    title: Text('Home'),
                  ),
                  ListTile(
                    // tileColor: Colors.brown,
                    visualDensity: VisualDensity(vertical: -2),
                    leading: Icon(Icons.add_alert_outlined,
                        color: Color.fromARGB(255, 16, 132, 226)),
                    title: Text('Alert'),
                  ),
                  ListTile(
                    // tileColor: Colors.brown,
                    visualDensity: VisualDensity(vertical: -2),
                    leading: Icon(Icons.settings_outlined,
                        color: Color.fromARGB(255, 16, 132, 226)),
                    title: Text('Settings'),
                  ),
                  ListTile(
                    // tileColor: Colors.brown,
                    visualDensity: VisualDensity(vertical: -2),
                    leading: Icon(Icons.person_2_outlined,
                        color: Color.fromARGB(255, 16, 132, 226)),
                    title: Text('Users'),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
