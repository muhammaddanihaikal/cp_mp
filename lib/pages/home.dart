import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cp/pages/hasil_rekomendasi.dart';
import 'package:cp/widgets/teks.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import './hasil_rekomendasi.dart';
import './chatbot.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  XFile? image;

  final ImagePicker picker = ImagePicker();

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  //show popup dialog
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hairstyle Recomendation'), automaticallyImplyLeading: false),
      body: Container(
        height: 10000,
        width: 10000,
        color: Colors.orange[300],
        padding: EdgeInsets.all(30),
        child: Container(
          padding: EdgeInsets.only(top: 10),
          color: Colors.green[300],
          child: ListView(
            children: [
              Column(
            children: [
              SizedBox(
                height: 18.0,
              ),
              Text(
                "Upload Your Image",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 18.0,
              ),
              // Buat gambar
              image != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.file(
                        //to show image, you type like this.
                        File(image!.path),
                        fit: BoxFit.cover,
                        width: 150,
                        // width: MediaQuery.of(context).size.width,
                        height: 150,
                      ),
                    ),
                  )
                : Text(
                    "No Image",
                    style: TextStyle(fontSize: 20),
                  ),
              SizedBox(
                height: 18.0,
              ),
              Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Teks('Upload')],
                ),
              ),
              Container(
                // margin: EdgeInsets.only(bottom: 15),
                width: 200,
                // decoration: BoxDecoration(border: Border.all(width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => {
                        myAlert()
                      },
                      child: Icon(
                        Icons.upload_file_outlined,
                        size: 20.0,
                        color: Colors.white,
                      ),
                      style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue[400])),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Teks('Hasil Rekomendasi')],
                ),
              ),
              Container(
                width: 100,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HasilRekomendasi()))
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 20.0,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blue[400])),
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              Container(
                width: 300,
                // decoration: BoxDecoration(border: Border.all(width: 2)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Teks('Pertanyaan')],
                    ),
                  ),
                  Container(
                    width: 50,
                    margin: EdgeInsets.only(right: 5),
                    child: ElevatedButton(
                      onPressed: () => {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChatBot()))
                      },
                      child: Icon(
                        Icons.contact_support,
                        size: 20.0,
                        color: Colors.white,
                      ),
                      style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue[400])),
                    ),
                  )
                ]),
              )
            ],
          ),
            ],
          )
        ),
      ),
    );
  }
}