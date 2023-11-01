import 'package:flutter/material.dart';
import 'package:portfolio/UI/Project/bizapp_project.dart';
import 'package:portfolio/UI/footer.dart';
import 'package:portfolio/UI/home.dart';

import '../constant.dart';

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

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Header(title: "Quranly", subtitle: "Your peaceful book for guide in afterlife"),

            const SizedBox(height: 50),

            /// images
            ProjectDetailImages(images: images),
            const SizedBox(height: 30),

            Padding(
              padding: Responsive.isSmallScreen(context) ? const EdgeInsets.symmetric(horizontal: 15) : const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  const SizedBox(height: 30),

                  ConstantsWidget().prodetailtext(),
                  ProjectDetailDesc(desc: ConstantsWidget.textQuranly),
                  const SizedBox(height: 40),

                  /// role
                  ConstantsWidget().roletext(),
                  const ProjectDetailAttribute(text: "Programmer"),
                  const SizedBox(height: 50),

                  /// tools
                  ConstantsWidget().toolstext(),
                  const ProjectDetailAttribute(text: "Flutter (Provider State Management), Dart, Android Studio, SQLite, Figma/Adobe XD"),
                  const SizedBox(height: 50),

                  /// link
                  ConstantsWidget().linktext(),
                  const SizedBox(height: 20),

                  /// button
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [

                      ProjectButtonAndroid(url: ConstantsWidget.urlquranlyAndroid),
                      ProjectButtoniOS(url: ConstantsWidget.urlquranlysiOS),
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
