import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

import 'home.dart';

class ConstantsWidget {

  /// constant widget for popup case study
  Widget closepopup(context){
    return InkWell(
      onTap: (){
        GoRouter.of(context).push("/");
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Responsive.isLargeScreen(context) ? Colors.grey[200] : Colors.blue[400],
            borderRadius: BorderRadius.circular(80)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 13),
          child: Text("Go Back", style: TextStyle(
              fontSize: 13, color: Responsive.isSmallScreen(context) ? Colors.white : Colors.black
          )),
        ),
      ),
    );
    // return MaterialButton(
    //   padding: const EdgeInsets.symmetric(horizontal: 83),
    //   hoverColor: Colors.blue[400],
    //
    //   // onPressed: ()=> GoRouter.of(context).pop(true),
    //   onPressed: ()=> GoRouter.of(context).push("/"),
    //   height: 50,
    //   color: Responsive.isLargeScreen(context) ? Colors.grey[200] : Colors.blue[400],
    //   shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(80)),
    //   child: Text("Go Back", style: TextStyle(
    //       fontSize: 13, color: Responsive.isSmallScreen(context) ? Colors.white : Colors.black
    //   )),
    // );
  }

  Widget buttonAndroidpopup(context, {required String url}){
    return InkWell(
      onTap: (){
        html.window.open(url, "_blank");
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Responsive.isLargeScreen(context) ? Colors.grey[200] : const Color(0xff2FD37D),
            borderRadius: BorderRadius.circular(80)
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 13),
          child: Text("Download for Android", style: TextStyle(
              fontSize: 13, color: Colors.black
          )),
        ),
      ),
    );
    // return MaterialButton(
    //   padding: const EdgeInsets.symmetric(horizontal: 40),
    //   hoverColor: const Color(0xff2FD37D),
    //   onPressed: (){
    //     html.window.open(url, "_blank");
    //   },
    //   height: 50,
    //   color: Responsive.isLargeScreen(context) ? Colors.grey[200] : const Color(0xff2FD37D),
    //   shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(80)),
    //   child: const Text("Download for Android", style: TextStyle(
    //       fontSize: 13, color: Colors.black
    //   )),
    // );
  }

  Widget buttonIospopup(context, {required String url}){
    return InkWell(
      onTap: (){
        html.window.open(url, "_blank");
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(80)
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 13),
          child: Text("Download for iOS", style: TextStyle(
              fontSize: 13, color: Colors.black
          )),
        ),
      ),
    );
    // return MaterialButton(
    //   padding: const EdgeInsets.symmetric(horizontal: 55),
    //   hoverColor: const Color(0xffD6D6D6),
    //   onPressed: (){
    //     html.window.open(url,"_blank");
    //   },
    //   height: 50,
    //   color: Colors.grey[200],
    //   shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(80)),
    //   child: const Text("Download for iOS", style: TextStyle(
    //       fontSize: 13, color: Colors.black
    //   )),
    // );
  }

  Widget buttonwebpopup(context, {required String url}){
    return InkWell(
      onTap: (){
        html.window.open(url, "_blank");
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(80)
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 13),
          child: Text("Go to website", style: TextStyle(
              fontSize: 13, color: Colors.black
          )),
        ),
      ),
    );
    // return MaterialButton(
    //   padding: const EdgeInsets.symmetric(horizontal: 65),
    //   hoverColor: const Color(0xffD6D6D6),
    //   onPressed: (){
    //     html.window.open(url,"_blank");
    //   },
    //   height: 50,
    //   color: Colors.grey[200],
    //   shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(80)),
    //   child: const Text("Go to website", style: TextStyle(
    //       fontSize: 13, color: Colors.black
    //   )),
    // );
  }

  Text roletext(){
    return Text("Role:", style: GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w500
    ));
  }

  Text prodetailtext(){
    return Text("Project Details:", style: GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w500
    ));
  }

  Text toolstext(){
    return Text("Tools:", style: GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w500
    ));
  }

  Text linktext(){
    return Text("Project Links:", style: GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w500
    ));
  }

  static String textBizapp = '''Bizapp X is a revamp apps from existing app Bizapp v7. Bizapp is utilised by online and offline businesses to manage order data and sales. Nowadays any entreprenuers should engage with e-commerce or they will be left behind. Our target audience is dropship, agents, stockists and headquarters (HQ). Some of brand name that are using Bizapp is Simplysiti, Rizka, Byreefa and many more.\n\nDuring development, the challenges I face is to compute commission price for agents. In Bizapp, you can have up to 6 prices for your agents price. Futhermore, Bizapp also have complex structure and more than 20 module (features) for users to use.
  ''';

  static String textBizappay = '''Bizappay is a online payment platform services for business and individual with a low rate charge. You can create, track and record transaction history in one web-mobile application system to empower your business with the right tools to collect and record online payments. Bizappay also provides real-time reporting and analytics, customizable payment pages, and fraud prevention measures.\n\nWith current integration, Bizappay user have choices to choose payment method either via FPX online banking, Shoppepay and Grabpay. Users also can use local or foreign credit card for the same purpose too.
  ''';

  static String textBizappos = '''BizApp POS is a Point-of-Sale focused app that are designed to help Ultimate & Privilege package users utilise our existing POS module from our website and allow them to connect with other POS related appliances such as cash drawers, thermal printers, and so on. This software is available either for your smartphone, tablet, desktop and coming soon to web version.
  ''';

  static String textAware = '''Aware apps is an apps that help you to free-porn addicted which offers mindfulness exercises and meditations to help users improve their mental health and reduce stress. This app is designed for people of all ages and backgrounds, with the aim of promoting better life, mental health and well-being.
  ''';

  static String textQuranly = '''The Quranly app is a comprehensive Islamic application that provides Muslims with an array of tools and resources to learn and practice their religion. The app includes a digital version of the Quran with multiple translations, a searchable database of Islamic texts and teachings, and various features to help users read and memorize the Quran. Futhermore, the app includes a prayer timetable, daily reminders to read and study the Quran, and a social network of like-minded individuals to share and discuss religious topics.\n\nThe challeges to create this apps is to track user reading progress and store into local database by using SQlite software. The letter of huruf quran is quite different to display since the way of reading is from right-to-left.
  ''';

  /// url bizapp
  static String urlbizappAndroid = "https://play.google.com/store/apps/details?id=com.bizapp.bizappx&hl=en";
  static String urlbizappiOS = "https://apps.apple.com/my/app/bizapp-x/id1581323969";
  static String urlbizappweb = "https://www.bizapp.com.my";

  /// url bizappay
  static String urlbizappayAndroid = "https://play.google.com/store/apps/details?id=com.bizapp.bizappay&hl=en&gl=US";
  static String urlbizappayiOS = "https://apps.apple.com/my/app/bizappay/id1525672898";
  static String urlbizappayweb = "https://www.bizappay.my";

  /// url bizappos
  static String urlbizapposAndroid = "https://play.google.com/store/apps/details?id=com.bizapp_pos";
  static String urlbizapposiOS = "https://apps.apple.com/us/app/bizappos/id1638684895";
  static String urlbizapposweb = "https://www.bizappos.com";

  /// url quranly
  static String urlquranlyAndroid = "https://play.google.com/store/apps/details?id=com.quranly.app&hl=en&gl=US";
  static String urlquranlysiOS = "https://apps.apple.com/my/app/quranly/id1559233786";

  /// url aware
  static String urlawareAndroid = "https://play.google.com/store/apps/details?id=au.com.awareacademy&hl=en&gl=US";
  static String urlawareiOS = "https://apps.apple.com/my/app/aware-academy/id1611163995";
  static String urlawareweb = "https://awareacademy.com.au/";

}

/// for project detail description
class ProjectDetailDesc extends StatelessWidget {
  final String desc;
  const ProjectDetailDesc({super.key, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: Responsive.isLargeScreen(context) ? 30 : 0),
      child: Text(desc,
          textAlign: TextAlign.justify, style: GoogleFonts.poppins(
              fontSize: 16
          )),
    );
  }
}

class ProjectDetailAttribute extends StatelessWidget {
  final String text;
  const ProjectDetailAttribute({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.poppins(
        fontSize: 16, color: Colors.black54, fontWeight: FontWeight.w500
    ));
  }
}

