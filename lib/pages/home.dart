import 'package:cp/pages/hasil_rekomendasi.dart';
import 'package:cp/widgets/teks.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import './hasil_rekomendasi.dart';
import './chatbot.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
          child: Column(
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
              Container(
                  width: 150,
                  height: 150,
                  // margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Image(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQORdyAPOhfa4FeNYJfpW0ixTvBCabf-wNznA&usqp=CAU"),
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 18.0,
              ),
              Container(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Teks('Upload'), Teks('Kamera')],
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
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HasilRekomendasi()))
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
                    ElevatedButton(
                      onPressed: () => {exit(0)},
                      child: Icon(
                        Icons.camera_alt_outlined,
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
        ),
      ),
    );
  }
}
