import 'package:flutter/material.dart';
// import 'package:flutter_application_2/Navbar/screen_home.dart';
import 'package:trashure_code_flutter/Hadyan%20&%20Ananta%20Code/Navbar/screen_home.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ScreenTfc extends StatefulWidget {
  const ScreenTfc({super.key});

  @override
  State<ScreenTfc> createState() => _ScreenTfcState();
}

class _ScreenTfcState extends State<ScreenTfc> {
  PickedFile? selectedImage;

  Future<void> _getFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        selectedImage = pickedFile;
      });
    }
  }

  Future<void> _takePhoto() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        selectedImage = pickedFile;
      });
    }
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 140,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('Gunakan Kamera'),
                onTap: () {
                  _takePhoto();
                  Navigator.pop(context, 'Pilihan 1');
                },
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Pilih dari Gallery'),
                onTap: () {
                  _getFromGallery();
                  Navigator.pop(context, 'Pilihan 2');
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Trash for Trash",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(39, 79, 193, 1.0),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
          ),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => ScreenHome()));
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            margin: EdgeInsets.all(24),
            child: Text(
              '(!) Halaman ini dimaksudkan bagi anda yang ingin menjual sampah yang masih bisa didaur ulang. Sampah daur ulang dapat diubah menjadi poin yang dapat ditukar menjadi uang cash atau dapat digunakan membayar layanan ',
              textAlign: TextAlign.justify,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(39, 79, 193, 1.0))),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              labelText: 'Nama :',
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 24),
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(39, 79, 193, 1.0))),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              labelText: 'Alamat :',
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 24),
          TextField(
            maxLines: null,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(39, 79, 193, 1.0))),
              labelText: "Deskripsi:",
              labelStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              //contentPadding: EdgeInsets.symmetric(vertical: 30),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 10.0),
              ),
            ),
          ),
          SizedBox(height: 35),
          Text(
            "Upload Gambar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: selectedImage == null
                ? IconButton(
                    iconSize: 100,
                    onPressed: () {
                      _showBottomSheet(context);
                    },
                    icon: Image.asset(
                      "assets/images/image 14.png",
                    ),
                  )
                : Container(
                    height: 250,
                    child: Image.file(File(selectedImage!.path)),
                  ),
          ),
          SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Submit Berhasil!"),
                    );
                  });
            },
            child: Text(
              "Submit",
              style: TextStyle(fontSize: 20),
            ),
            style: ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromRGBO(39, 79, 193, 1.0)),
                foregroundColor:
                    MaterialStatePropertyAll(Color.fromRGBO(153, 235, 0, 1)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
          )
        ],
      ),
    );
  }
}
