import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Hola Anonymous!',
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme()
      ),
      //home: DinnerTemplate(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.trackpad,
  };
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