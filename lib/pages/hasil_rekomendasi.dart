import 'package:flutter/material.dart';
import '../widgets/teks.dart';

class HasilRekomendasi extends StatelessWidget {
  const HasilRekomendasi({super.key});

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
                "Hasil Rekomendasi",
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
                height: 10.0,
              ),
              Teks("Jenis Wajah : Oblong"),
              SizedBox(
                height: 18.0,
              ),
              Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Teks('Hairstyle Rekomendasi : '),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 100,
                            height: 100,
                            // margin: EdgeInsets.only(left: 5, right: 5),
                            child: Column(
                              children: [
                                Container(
                                    width: 80,
                                    height: 80,
                                    // margin: EdgeInsets.only(left: 5, right: 5),
                                    child: Image(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQORdyAPOhfa4FeNYJfpW0ixTvBCabf-wNznA&usqp=CAU"),
                                      fit: BoxFit.cover,
                                    )),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Teks('Undercut')
                              ],
                            )),
                        Container(
                            width: 100,
                            height: 100,
                            // margin: EdgeInsets.only(left: 5, right: 5),
                            child: Column(
                              children: [
                                Container(
                                    width: 80,
                                    height: 80,
                                    // margin: EdgeInsets.only(left: 5, right: 5),
                                    child: Image(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQORdyAPOhfa4FeNYJfpW0ixTvBCabf-wNznA&usqp=CAU"),
                                      fit: BoxFit.cover,
                                    )),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Teks('Botak')
                              ],
                            )),
                        Container(
                            width: 100,
                            height: 100,
                            // margin: EdgeInsets.only(left: 5, right: 5),
                            child: Column(
                              children: [
                                Container(
                                    width: 80,
                                    height: 80,
                                    // margin: EdgeInsets.only(left: 5, right: 5),
                                    child: Image(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQORdyAPOhfa4FeNYJfpW0ixTvBCabf-wNznA&usqp=CAU"),
                                      fit: BoxFit.cover,
                                    )),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Teks('Cepmek')
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ),
              // Button
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
