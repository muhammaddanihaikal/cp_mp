import 'package:flutter/material.dart';
import '../pages/hasil_rekomendasi.dart';
import './teks.dart';

class ChatBot_Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      // decoration: BoxDecoration(border: Border.all(width: 2)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
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
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HasilRekomendasi()))
            },
            child: Icon(
              Icons.contact_support,
              size: 20.0,
              color: Colors.white,
            ),
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                backgroundColor: MaterialStateProperty.all(Colors.blue[400])),
          ),
        )
      ]),
    );
  }
}
