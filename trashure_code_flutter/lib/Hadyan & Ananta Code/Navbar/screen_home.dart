import 'package:flutter/material.dart';
import 'package:trashure_code_flutter/Frans_Code/homescreen.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/About%20Us/about_us.dart';
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
    MyHomePage(),
    HomeScreen(),
    PaymentPage(),
    ScreenTfc()
  ];
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void _navigateToSameScreen(int) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screens[int]),
    );
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
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                  child: Image.asset(
                                      "assets/images/Group 19.png")),
                              SizedBox(
                                width: 10,
                              ),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutUsScreen()));
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
                              GestureDetector(
                                onTap: () {
                                  _navigateToSameScreen(0);
                                },
                                child: Column(
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
                              ),
                              GestureDetector(
                                onTap: () {
                                  _navigateToSameScreen(1);
                                },
                                child: Column(
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
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _navigateToSameScreen(3);
                                },
                                child: Column(
                                  children: [
                                    Image.asset("assets/icons/navbar4.png"),
                                    Text(
                                      "Cash or Duel",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _navigateToSameScreen(4);
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
        floatingActionButton: currentIndex == 2
            ? FloatingActionButton(
                onPressed: () {
                  _showFeatureExplanationDialog(context);
                },
                tooltip: 'Tentang Fitur Aplikasi',
                child: Icon(Icons.help_outline),
              )
            : null,
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
          onTap: _onItemTapped,
        ));
  }
}

void _showFeatureExplanationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Tentang Fitur Aplikasi',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                  "Aplikasi Trashure ini memiliki beberapa fitur di antaranya adalah berikut:"),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icons/navbar1.png",
                    height: 50,
                    width: 60,
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: "Fitur Call To Dump",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text:
                              ",fitur ini dapat menghubungkan anda dengan mitra kami untuk melakukan pengambilan sampah di rumah anda. ",
                        ),
                      ]),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icons/navbar2.png",
                    height: 50,
                    width: 60,
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: "Fitur Trash is ready / Scheduling",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text:
                              ",fitur ini memperbolehkan anda untuk mengatur tanggal penjemputan sampah di rumah anda, sehingga pada saat waktunya mitra dapat langsung melakukan penjemputan sampah.",
                        ),
                      ]),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icons/navbar4.png",
                    height: 50,
                    width: 60,
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: "Fitur Payment",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text:
                              ",fitur ini bertujuan untuk memudahkan anda dalam melakukan pembayaran.",
                        ),
                      ]),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/icons/navbar5.png",
                    height: 50,
                    width: 60,
                  ),
                  Expanded(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text: "Fitur Trash For Cash",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text:
                              ",fitur ini memungkinkan anda untuk menjual atau menukarkan barang-barang bekas anda, barang yang anda jual dapat ditukarkan menjadi poin yang dapat digunakan didalam aplikasi. ",
                        ),
                      ]),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Tutup'),
          ),
        ],
      );
    },
  );
}
