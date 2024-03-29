import 'package:flutter/material.dart';
import 'package:portfolio/UI/Project/bizapp_project.dart';
import 'package:portfolio/UI/footer.dart';
import 'package:portfolio/UI/home.dart';

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
            ProjectDetailImages(images: images),
            const SizedBox(height: 30),

            Padding(
              padding: Responsive.isSmallScreen(context) ? const EdgeInsets.symmetric(horizontal: 15) : const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  const SizedBox(height: 30),

                  ConstantsWidget().prodetailtext(),
                  ProjectDetailDesc(desc: ConstantsWidget.textAware),
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

                      ProjectButtonAndroid(url: ConstantsWidget.urlawareAndroid),
                      ProjectButtoniOS(url: ConstantsWidget.urlawareiOS),
                      ProjectButtonWeb(url: ConstantsWidget.urlawareweb),
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
