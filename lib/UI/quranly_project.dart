import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/home.dart';
import 'package:portfolio/UI/project.dart';

import 'constant.dart';

class QuranlyProject extends StatelessWidget {
  const QuranlyProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/quranly1.jpg",
      "images/quranly2.jpg",
      "images/quranly3.jpg",
      "images/quranly4.jpg",
      "images/quranly5.jpg",
      "images/quranly6.jpg",
    ];

    final Size size = MediaQuery.of(context).size;
    return ButtonBarTheme(
        data: const ButtonBarThemeData(alignment: MainAxisAlignment.center),
        child: AlertDialog(
          contentPadding: Responsive.isLargeScreen(context) ? const EdgeInsets.symmetric(horizontal: 30, vertical: 30)
              : const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            ConstantsWidget().closepopup(context)
          ],

          content: SizedBox(
            width: size.width * .8,
            height: size.height,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 30),

                  Center(
                    child: SizedBox(
                      height: Responsive.isLargeScreen(context) ? 400 : 350,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: images.map((e) => Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: ProjectImages(img: e))).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  ConstantsWidget().prodetailtext(),
                  Padding(
                    padding: EdgeInsets.only(right: Responsive.isLargeScreen(context) ? 30 : 0),
                    child: Text("The Quranly app is a comprehensive Islamic application that provides Muslims with an array of tools and resources to learn and practice their religion. "
                        "The app includes a digital version of the Quran with multiple translations, a searchable database of Islamic texts and teachings, and various features to help users read and memorize the Quran. "
                        "Futhermore, the app includes a prayer timetable, daily reminders to read and study the Quran, and a social network of like-minded individuals to share and discuss religious topics.\n\n"
                        "The challeges to create this apps is to track user reading progress and store into local database by using SQlite software. The letter of huruf quran is quite different to display since the way of reading "
                        "is from right-to-left.",

                        textAlign: TextAlign.justify, style: GoogleFonts.poppins()),
                  ),
                  const SizedBox(height: 40),

                  /// role
                  ConstantsWidget().roletext(),
                  Text("Programmer", style: GoogleFonts.poppins(
                      fontSize: 16, color: Colors.black54, fontWeight: FontWeight.w500
                  )),
                  const SizedBox(height: 20),

                  /// tools
                  ConstantsWidget().toolstext(),
                  Text("Flutter (Provider State Management), Dart, Android Studio, SQLite, Figma/Adobe XD", style: GoogleFonts.poppins(
                      fontSize: 16, color: Colors.black54, fontWeight: FontWeight.w500
                  )),
                  const SizedBox(height: 30),

                  /// link
                  ConstantsWidget().linktext(),
                  const SizedBox(height: 20),


                  /// button
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      ConstantsWidget().buttonAndroidpopup(context, url: "https://play.google.com/store/apps/details?id=com.quranly.app&hl=en&gl=US"),
                      ConstantsWidget().buttonIospopup(context, url: "https://apps.apple.com/my/app/quranly/id1559233786"),
                    ],
                  ),

                  const SizedBox(height: 60),

                ],
              ),
            ),
          ),
        )
    );
  }
}
