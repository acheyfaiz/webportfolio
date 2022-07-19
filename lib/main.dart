import 'package:flutter/material.dart';
import 'package:portfolio/UI/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

/*
 STEPS TO DEPLOY FLUTTER WEB HOSTING
  1- run flutter build web
  2- run firebase init
  3- pilih Y
  4- pilih features firebase mana nak pakai - so kita pilih hosting features
  5- ... public directory - tulis build/web
  6- single page app? N
  7- github? N
  8- override build/web file? N
  9- after firebase initialization complete, run firebase deploy
  10- tadaaa siap!
*/