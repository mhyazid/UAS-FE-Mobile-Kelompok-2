import 'package:flutter/material.dart';

class ScreenCL extends StatefulWidget {
  const ScreenCL({super.key});

  @override
  State<ScreenCL> createState() => _ScreenCLState();
}

class _ScreenCLState extends State<ScreenCL> {
  final List<Map<String, dynamic>> data = [
    {"nama": "John Doe", "jarak": 5.2, "img": "assets/images/john_doe.png"},
    {"nama": "Jane Smith", "jarak": 3.8, "img": "assets/images/jane_smith.png"},
    {
      "nama": "Michael Johnson",
      "jarak": 7.1,
      "img": "assets/images/michael_johnson.png"
    },
    {
      "nama": "Andy Dufrans",
      "jarak": 0.1,
      "img": "assets/images/michael_johnson.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    data.sort((pelanggan1, pelanggan2) =>
        pelanggan1['jarak'].compareTo(pelanggan2['jarak']));
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Customer List",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(39, 79, 193, 1.0),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "NEARBY CUSTOMER",
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
                        backgroundImage:
                            AssetImage('assets/images/Group 19.png'),
                        backgroundColor: Color.fromRGBO(210, 210, 210, 1),
                      ),
                      title: Text(
                        customer['nama'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("${customer['jarak']} km"),
                      trailing: IconButton(
                        icon: Image.asset('assets/icons/image 10.png'),
                        onPressed: () {
                          ;
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
