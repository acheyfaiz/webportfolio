import 'package:flutter/material.dart';
import 'package:portfolio/UI/Project/bizapp_project.dart';
import 'package:portfolio/UI/constant.dart';
import 'package:portfolio/UI/footer.dart';
import 'package:portfolio/UI/home.dart';
import 'package:portfolio/UI/project.dart';

class BizapposProject extends StatelessWidget {
  const BizapposProject({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/bizappos1.jpg",
      "images/bizappos2.jpg",
      "images/bizappos3.jpg",
      "images/bizappos4.jpg",
      "images/bizappos5.jpg",
    ];

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Header(title: "Bizappos", subtitle: "Manage your Point-of-Sale (POS) with our ultimate software"),

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
                  ProjectDetailDesc(desc: ConstantsWidget.textBizappos),
                  const SizedBox(height: 40),

                  /// role
                  ConstantsWidget().roletext(),
                  const ProjectDetailAttribute(text: "Programmer"),
                  const SizedBox(height: 50),

                  /// tools
                  ConstantsWidget().toolstext(),
                  const ProjectDetailAttribute(text: "Flutter, Dart, Kotlin, Android Studio, RestAPI, Third party Integration, CI/CD Pipeline"),
                  const SizedBox(height: 50),

                  /// link
                  ConstantsWidget().linktext(),
                  const SizedBox(height: 20),

                  /// button
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      ConstantsWidget().buttonAndroidpopup(context, url: ConstantsWidget.urlbizapposAndroid),
                      ConstantsWidget().buttonIospopup(context, url: ConstantsWidget.urlbizapposiOS),
                      ConstantsWidget().buttonwebpopup(context, url: ConstantsWidget.urlbizapposweb),
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
