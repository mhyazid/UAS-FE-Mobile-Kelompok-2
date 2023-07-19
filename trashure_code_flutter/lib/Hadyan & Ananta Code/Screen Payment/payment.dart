import 'package:flutter/material.dart';
// import 'package:flutter_application_2/Navbar/screen_home.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Navbar/screen_home.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int? _paymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        centerTitle: true,
        backgroundColor: const Color(0xFF274FC1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => ScreenHome()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 32),
                height: 196,
                width: 338,
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Text(
                        "Payment Detail",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 26),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Subtotal'),
                          Text('Rp. 27000'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.only(left: 32, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Service fee'),
                          Text('Rp. 2000'),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Total',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            'Rp. 32000',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 42,
                width: 338,
                margin: const EdgeInsets.only(top: 64),
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    'Payment Method',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                width: 338,
                padding: const EdgeInsets.all(
                  20,
                ),
                margin: const EdgeInsets.only(
                  top: 16,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RadioListTile<int>(
                        value: 0,
                        groupValue: _paymentMethod,
                        onChanged: (int? value) {
                          setState(() {
                            _paymentMethod = value;
                          });
                        },
                        title: Row(
                          children: [
                            const Expanded(
                              child: Text(
                                'Cash',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/icons/cash.png',
                              width: 34,
                              height: 34,
                            ),
                          ],
                        )),
                    RadioListTile<int>(
                        value: 1,
                        groupValue: _paymentMethod,
                        onChanged: (int? value) {
                          setState(() {
                            _paymentMethod = value;
                          });
                        },
                        title: Row(
                          children: [
                            const Expanded(
                              child: Text(
                                'Transfer',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/icons/transfer.png',
                              width: 34,
                              height: 34,
                            ),
                          ],
                        )),
                    RadioListTile<int>(
                        value: 2,
                        groupValue: _paymentMethod,
                        onChanged: (int? value) {
                          setState(() {
                            _paymentMethod = value;
                          });
                        },
                        title: Row(
                          children: [
                            const Expanded(
                              child: Text(
                                'E-Wallet',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              'assets/icons/wallet.png',
                              width: 34,
                              height: 34,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Container(
                height: 42,
                width: 338,
                margin: const EdgeInsets.only(top: 64),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Action for Cancel button
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Fluttertoast.showToast(
                              msg: 'Payment Succes!',
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              backgroundColor: Colors.green,
                              textColor:
                                  const Color.fromARGB(255, 255, 255, 255),
                            );
                          },
                          child: const Text(
                            'Confirm',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
