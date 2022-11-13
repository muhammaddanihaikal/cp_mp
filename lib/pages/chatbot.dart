import 'package:flutter/material.dart';
import '../widgets/teks.dart';

class ChatBot extends StatelessWidget {
  const ChatBot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hairstyle Recomendation'), automaticallyImplyLeading: false),
      body: Container(
        width: 10000,
        color: Colors.orange[300],
        padding: EdgeInsets.all(30),
        child: Container(
          padding: EdgeInsets.only(top: 10),
          color: Colors.green[300],
          child: Column(
            children: [
              Text(
                "Chat Bot",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "Muhammad Dani Haikal",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  child: Image.asset(
                    'assets/images/gambar1.jpg',
                  )),
              Container(
                  width: 400,
                  padding: EdgeInsets.only(left: 5, right: 5),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  // decoration: BoxDecoration(border: Border.all(width: 2)),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Teks("Nama : Muhammad Dani Haikal"),
                      Teks("TTL : Tegal, 9 - Juli - 2001"),
                      Teks("Jenis Kelamin : Laki - Laki"),
                      Teks("Agama : Islam"),
                      Teks(
                          "Alamat : Jl.Kerti Rt.01 Rw.12 No.17 Desa Suradadi, Kab.Tegal"),
                      Teks(""),
                      Teks("Pendidikan : "),
                      Teks("- SDN 01 DESA SURADADI (2008 - 2014)"),
                      Teks("- SMPN 03 KOTA TEGAL (2014 - 2017)"),
                      Teks("- SMAN 02 KOTA TEGAL (2017 - 2020)"),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                width: 300,
                // decoration: BoxDecoration(border: Border.all(width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => {Navigator.of(context).pop()},
                      child: Text('Kembali'),
                      style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue[400])),
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
