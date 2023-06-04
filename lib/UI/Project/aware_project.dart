import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/Project/bizapp_project.dart';
import 'package:portfolio/UI/footer.dart';
import 'package:portfolio/UI/home.dart';
import 'package:portfolio/UI/project.dart';

import '../constant.dart';

class AwareProject extends StatelessWidget {
  const AwareProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/aware1.jpg",
      "images/aware2.jpg",
      "images/aware3.jpg",
      "images/aware4.jpg",
      "images/aware5.jpg",
      "images/aware6.jpg",
    ];

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Header(title: "Aware", subtitle: "Please, stop doing pornography habit!"),

            const SizedBox(height: 50),

            /// images
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

            Padding(
              padding: Responsive.isSmallScreen(context) ? const EdgeInsets.symmetric(horizontal: 15) : const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  const SizedBox(height: 30),

                  ConstantsWidget().prodetailtext(),
                  Padding(
                    padding: EdgeInsets.only(right: Responsive.isLargeScreen(context) ? 30 : 0),
                    child: Text("Aware apps is an apps that help you to free-porn addicted which offers mindfulness exercises and meditations to help users improve their mental health and reduce stress. "
                        "This app is designed for people of all ages and backgrounds, with the aim of promoting better life, mental health and well-being.",

                        textAlign: TextAlign.justify, style: GoogleFonts.poppins(
                            fontSize: 16
                        )),
                  ),
                  const SizedBox(height: 40),

                  /// role
                  ConstantsWidget().roletext(),
                  Text("Programmer", style: GoogleFonts.poppins(
                      fontSize: 16, color: Colors.black54, fontWeight: FontWeight.w500
                  )),
                  const SizedBox(height: 50),

                  /// tools
                  ConstantsWidget().toolstext(),
                  Text("Flutter (Provider State Management), Dart, Android Studio, SQLite, Figma/Adobe XD", style: GoogleFonts.poppins(
                      fontSize: 16, color: Colors.black54, fontWeight: FontWeight.w500
                  )),
                  const SizedBox(height: 50),

                  /// link
                  ConstantsWidget().linktext(),
                  const SizedBox(height: 20),

                  /// button
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      ConstantsWidget().buttonAndroidpopup(context, url: "https://play.google.com/store/apps/details?id=au.com.awareacademy&hl=en&gl=US"),
                      ConstantsWidget().buttonIospopup(context, url: "https://apps.apple.com/my/app/aware-academy/id1611163995"),
                      ConstantsWidget().buttonwebpopup(context, url: "https://awareacademy.com.au/"),
                      ConstantsWidget().closepopup(context),
                    ],
                  ),
                ],
              ),

            ),

            const SizedBox(height: 130),

            const Footer()

          ],
        ),
      ),
    );
  }
}