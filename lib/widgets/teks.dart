import 'package:flutter/material.dart';

class Teks extends StatelessWidget {
  Teks(this.value);
  final String value; 

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: TextAlign.start,
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
    );
  }
}
