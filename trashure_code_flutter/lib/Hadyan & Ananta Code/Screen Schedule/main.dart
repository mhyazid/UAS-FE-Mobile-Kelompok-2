// //import 'package:calander/payment.dart';
// // import 'package:flutter_application_2/Navbar/screen_home.dart';
// // import 'package:flutter_application_2/Screen Payment/payment.dart';
// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:intl/intl.dart';
// import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Navbar/screen_home.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Calendar',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         fontFamily: 'Ubuntu',
//       ),
//       initialRoute: '/', // Rute awal
//       routes: {
//         '/': (context) => const MyHomePage(), // rute halaman utama (MyHomePage)
//       },
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key});

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   late DateTime _selectedDate;
//   late DateTime _focusedDate;
//   late TextEditingController _manualDateController;
//   bool _isEditingDate = false;
//   CalendarFormat _calendarFormat = CalendarFormat.month;

//   @override
//   void initState() {
//     super.initState();
//     _selectedDate = DateTime.now();
//     _focusedDate = DateTime.now();
//     _manualDateController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     _manualDateController.dispose();
//     super.dispose();
//   }

//   void _onDaySelected(
//       DateTime day, List<dynamic> events, List<dynamic> holidays) {
//     setState(() {
//       _selectedDate = day;
//       _focusedDate = day;
//       _manualDateController.text = DateFormat('dd MMMM yyyy').format(day);
//     });
//   }

//   void _toggleEditDate() {
//     setState(() {
//       _isEditingDate = !_isEditingDate;
//       if (!_isEditingDate) {
//         try {
//           final enteredDate =
//               DateFormat('dd MMMM yyyy').parse(_manualDateController.text);
//           _selectedDate = enteredDate;
//           _focusedDate = enteredDate;
//         } catch (e) {
//           // Handle invalid date format
//         }
//       }
//     });
//   }

//   void _focusDateOnCalendar(DateTime date) {
//     setState(() {
//       _focusedDate = date;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Schedule'),
//         centerTitle: true,
//         backgroundColor: const Color(0xFF274FC1),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pushReplacement(
//                 context, MaterialPageRoute(builder: (context) => ScreenHome()));
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           color: const Color.fromARGB(255, 239, 239, 239),
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Column(
//             children: <Widget>[
//               Container(
//                 alignment: Alignment.centerLeft,
//                 padding: const EdgeInsets.only(top: 32.0),
//                 child: const Text(
//                   "Next Dump Day's :",
//                   style: TextStyle(
//                     fontFamily: 'Ubuntu',
//                     fontWeight: FontWeight.bold,
//                     fontSize: 25,
//                     color: Color(0xFF274FC1),
//                   ),
//                 ),
//               ),
//               Container(
//                 width: 156,
//                 height: 160,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(22),
//                 ),
//                 padding: const EdgeInsets.all(28.0),
//                 margin: const EdgeInsets.only(top: 20.0),
//                 child: Column(
//                   children: [
//                     Text(
//                       DateFormat('MMMM').format(_selectedDate),
//                       style: const TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       DateFormat('yyyy').format(_selectedDate),
//                       style: const TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Container(
//                       width: 52,
//                       height: 52,
//                       margin: const EdgeInsets.only(top: 10),
//                       decoration: BoxDecoration(
//                         color: const Color(0xFF333333),
//                         borderRadius: BorderRadius.circular(7.0),
//                       ),
//                       child: Center(
//                         child: Text(
//                           DateFormat('dd').format(_selectedDate),
//                           style: const TextStyle(
//                             fontSize: 25,
//                             fontWeight: FontWeight.w400,
//                             color: Color(0xFF99EB3C),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 alignment: Alignment.centerLeft,
//                 padding: const EdgeInsets.only(top: 32.0),
//                 child: const Text(
//                   "Set Dump Day :",
//                   style: TextStyle(
//                     fontSize: 25,
//                     color: Color(0xFF274FC1),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               Container(
//                 margin: const EdgeInsets.only(bottom: 30),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF274FC1),
//                   borderRadius: BorderRadius.circular(28.0),
//                 ),
//                 padding: const EdgeInsets.all(20.0),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () {
//                               if (!_isEditingDate) {
//                                 setState(() {
//                                   _isEditingDate = true;
//                                 });
//                               }
//                             },
//                             child: _isEditingDate
//                                 ? TextFormField(
//                                     controller: _manualDateController,
//                                     keyboardType: TextInputType.datetime,
//                                     decoration: InputDecoration(
//                                       hintText: DateFormat('dd MM yyyy')
//                                           .format(_selectedDate),
//                                       hintStyle: TextStyle(
//                                         color: Colors.white54,
//                                       ),
//                                     ),
//                                     style: const TextStyle(
//                                       color: Colors.white,
//                                     ),
//                                     textAlign: TextAlign.center,
//                                     onFieldSubmitted: (value) {
//                                       _toggleEditDate();
//                                     },
//                                   )
//                                 : Text(
//                                     DateFormat('EEE, MMM yy')
//                                         .format(_selectedDate),
//                                     style: const TextStyle(
//                                       fontSize: 26,
//                                       fontWeight: FontWeight.bold,
//                                       color: Color.fromARGB(255, 31, 31, 31),
//                                     ),
//                                     textAlign: TextAlign.start,
//                                   ),
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: _toggleEditDate,
//                           child: const Icon(
//                             Icons.edit,
//                             color: Color.fromARGB(255, 31, 31, 31),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Container(
//                       height: 1,
//                       width: double.infinity,
//                       color: Color.fromARGB(255, 210, 210, 210),
//                     ),
//                     const SizedBox(height: 20),
//                     TableCalendar(
//                       firstDay: DateTime(1900),
//                       lastDay: DateTime(2100),
//                       selectedDayPredicate: (DateTime date) {
//                         return isSameDay(_selectedDate, date);
//                       },
//                       focusedDay: _focusedDate,
//                       onDaySelected:
//                           (DateTime selectedDay, DateTime focusedDay) {
//                         _onDaySelected(selectedDay, [], []);
//                       },
//                       calendarFormat: _calendarFormat,
//                       onFormatChanged: (format) {
//                         setState(() {
//                           _calendarFormat = format;
//                         });
//                       },
//                       onPageChanged: (focusedDate) {
//                         _focusDateOnCalendar(focusedDate);
//                       },
//                       calendarStyle: CalendarStyle(
//                         selectedDecoration: const BoxDecoration(
//                           color: Color.fromARGB(255, 113, 233, 113),
//                           shape: BoxShape.circle,
//                         ),
//                         selectedTextStyle: const TextStyle(
//                           color: Colors.white,
//                         ),
//                         todayDecoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           border: Border.all(
//                             color: const Color.fromARGB(255, 113, 233, 113),
//                             width: 2,
//                           ),
//                         ),
//                         todayTextStyle: const TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         weekendTextStyle: const TextStyle(
//                           color: Colors.white,
//                         ),
//                         outsideDaysVisible: false,
//                         defaultTextStyle: const TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                       daysOfWeekStyle: const DaysOfWeekStyle(
//                         weekdayStyle: TextStyle(
//                           color: Color.fromARGB(255, 255, 255, 255),
//                         ),
//                         weekendStyle: TextStyle(
//                           color: Color.fromARGB(255, 255, 255, 255),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
