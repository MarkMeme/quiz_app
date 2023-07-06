import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  String data = '';
  double size;
  TextComponent({super.key, required this.data, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
