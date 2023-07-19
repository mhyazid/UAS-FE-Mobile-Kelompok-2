import 'package:flutter/material.dart';

// import 'package:flutter_application_2/Navbar/screen_home.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Navbar/screen_home.dart';

class ScreenCtd extends StatefulWidget {
  const ScreenCtd({super.key});

  @override
  State<ScreenCtd> createState() => _ScreenCtdState();
}

class _ScreenCtdState extends State<ScreenCtd> {
  final List<Map<String, dynamic>> data = [
    {
      "nama": "John Doe",
      "jarak": 5.2,
    },
    {
      "nama": "Jane Smith",
      "jarak": 3.8,
    },
    {
      "nama": "Michael Johnson",
      "jarak": 7.1,
    },
    {
      "nama": "Cecep Sucecep",
      "jarak": 1,
    },
    {
      "nama": "Dadang Sudadang",
      "jarak": 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    data.sort((pelanggan1, pelanggan2) =>
        pelanggan1['jarak'].compareTo(pelanggan2['jarak']));
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Call To Dump",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(39, 79, 193, 1.0),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_rounded,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ScreenHome()));
              },
            )),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "NEARBY PARTNER",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(63, 100, 235, 1)),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final customer = data[index];
                  return Container(
                    height: 70,
                    margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(210, 210, 210, 1),
                        borderRadius: BorderRadius.circular(50)),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/Group 19.png',
                        ),
                        backgroundColor: Color.fromRGBO(210, 210, 210, 1),
                      ),
                      title: Text(
                        customer['nama'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("${customer['jarak']} km"),
                      trailing: IconButton(
                        icon: Image.asset('assets/icons/group 234.png'),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(
                                      "Apakah anda ingin menghubungi partner?"),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Dialog(
                                                  insetPadding:
                                                      EdgeInsets.all(10),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 403,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    16),
                                                            color:
                                                                Color.fromRGBO(
                                                                    39,
                                                                    79,
                                                                    193,
                                                                    1.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .phone_in_talk,
                                                                  size: 24,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                SizedBox(
                                                                    width: 8),
                                                                Text(
                                                                  'Ongoing Call',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 16),
                                                        Icon(
                                                          Icons.phone_in_talk,
                                                          size: 100,
                                                          color: Colors.green,
                                                        ),
                                                        SizedBox(height: 16),
                                                        Text(
                                                          'Connecting...',
                                                          style: TextStyle(
                                                            fontSize: 40,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(height: 16),
                                                        Image.asset(
                                                            'assets/images/Group 19.png'),
                                                        Text(
                                                          customer['nama'],
                                                          style: TextStyle(
                                                            fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(height: 16),
                                                        ElevatedButton(
                                                          style: ButtonStyle(
                                                              backgroundColor:
                                                                  MaterialStatePropertyAll(
                                                                      Color.fromRGBO(
                                                                          39,
                                                                          79,
                                                                          193,
                                                                          1.0))),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child:
                                                              Text('End Call'),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              });
                                        },
                                        child: Text("Ya")),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("Tidak"))
                                  ],
                                );
                              });
                        },
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
