import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/home.dart';

import 'dinner_template.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'viewtofaizdesk (Web Portfolio)',
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      //home: DinnerTemplate(),
    );
  }
}

/*
 STEPS TO DEPLOY FLUTTER WEB HOSTING
  1- run flutter build web (flutter build web --dart-define=FLUTTER_WEB_USE_SKIA=true --release)
     run sudo npm install -g firebase-tools
     run firebase login
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

// test commit