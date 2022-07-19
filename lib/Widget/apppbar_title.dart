import 'package:flutter/material.dart';
import 'package:portfolio/Model/Method.dart';

class AppBarTitle extends StatelessWidget {
  final String text;

  AppBarTitle({required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 14.0,
        //color: Color(0xffBAD0D0),
        color: Method().fontcolor,
      ),
    );
  }
}