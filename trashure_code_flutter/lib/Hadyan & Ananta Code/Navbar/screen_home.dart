import 'package:flutter/material.dart';
import 'package:trashure_code_flutter/Frans_Code/homescreen.dart';
// import 'package:flutter_application_2/Screen%20Call%20to%20Dump/screen_ctd.dart';
// import 'package:flutter_application_2/Screen%20Customer%20LIst/screen_cl.dart';
// import 'package:flutter_application_2/Screen%20Home/homescreen.dart';
// import 'package:flutter_application_2/Screen%20Payment/payment.dart';
// import 'package:flutter_application_2/Screen%20Schedule/main.dart';
// import 'package:flutter_application_2/Screen%20Trash%20for%20Cash/screen_tfc.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Screen%20Call%20to%20Dump/screen_ctd.dart';
// import 'package:trashure_code_flutter/Frans_Code/homescreen.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Screen%20Payment/payment.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Screen%20Schedule/Schedule_screen.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Screen%20Trash%20for%20Cash/screen_tfc.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  int currentIndex = 2;
  final List<Widget> screens = [
    ScreenCtd(),
    //ScreenCtd(),
    //ScreenCtd(),
    MyHomePage(),
    HomeScreen(),
    PaymentPage(),
    ScreenTfc()
  ];
  void _setSelectedIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentIndex == 2 ? AppBar() : null,
      drawer: currentIndex == 2
          ? Drawer(
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
                                child:
                                    Image.asset("assets/images/Group 19.png")),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
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
                      ListTile(
                        // tileColor: Colors.brown,
                        visualDensity: VisualDensity(vertical: -2),
                        leading: Icon(Icons.info_outline,
                            color: Color.fromARGB(255, 16, 132, 226)),
                        title: Text('About Us'),
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScreenHome()));
                        },
                      ),
                    ]),
                  ),
                ],
              ),
            )
          : null,
      body: currentIndex == 2
          ? Center(
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                print("object");
                              },
                              child: Column(
                                children: [
                                  Image.asset("assets/icons/navbar5.png"),
                                  Text(
                                    "Trash For Trash",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ]),
                )
              ],
            ))
          : screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.amber,
        selectedItemColor: Color.fromRGBO(153, 235, 0, 1),
        //unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,

        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/navbar1.png'),
              label: "CTD",
              backgroundColor: Color.fromRGBO(39, 79, 193, 1)),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/navbar2.png'),
              label: "Schedule",
              backgroundColor: Color.fromRGBO(39, 79, 193, 1)),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/navbar3.png'),
              label: "Home",
              backgroundColor: Color.fromRGBO(39, 79, 193, 1)),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/navbar4.png'),
              label: "Payment",
              backgroundColor: Color.fromRGBO(39, 79, 193, 1)),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/navbar5.png'),
              label: "TFC",
              backgroundColor: Color.fromRGBO(39, 79, 193, 1)),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
