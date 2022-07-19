import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double textsize;
  final Color color;
  CustomText(
      {required this.text,
        required this.textsize,
        required this.color,
      });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: textsize,
      ),
    );
  }
}
