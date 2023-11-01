import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/constant.dart';
import 'package:portfolio/UI/footer.dart';
import 'package:portfolio/UI/home.dart';
import 'package:portfolio/UI/project.dart';

class BizappProject extends StatelessWidget {
  const BizappProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/bizapp1.jpg",
      "images/bizapp2.jpg",
      "images/bizapp3.jpg",
      "images/bizapp4.jpg",
      "images/bizapp5.jpg",
      "images/bizapp6.jpg",
    ];

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Header(title: "Bizapp X", subtitle: "The most systematic system for your business management"),

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
                  ProjectDetailDesc(desc: ConstantsWidget.textBizapp),
                  const SizedBox(height: 40),

                  /// role
                  ConstantsWidget().roletext(),
                  const ProjectDetailAttribute(text: "Lead Developer"),
                  const SizedBox(height: 50),

                  /// tools
                  ConstantsWidget().toolstext(),
                  const ProjectDetailAttribute(text: "Flutter (Provider State Management), Dart, Android Studio, RestAPI, CI/CD Pipeline"),
                  const SizedBox(height: 50),

                  /// link
                  ConstantsWidget().linktext(),
                  const SizedBox(height: 20),

                  /// button
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      ConstantsWidget().buttonAndroidpopup(context, url: ConstantsWidget.urlbizappAndroid),
                      ConstantsWidget().buttonIospopup(context, url: ConstantsWidget.urlbizappiOS),
                      ConstantsWidget().buttonwebpopup(context, url: ConstantsWidget.urlbizappweb),
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

/// for header every projects
class Header extends StatelessWidget {
  final String title;
  final String subtitle;
  const Header({Key? key, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return SizedBox(
      height: size.height * .4,
      width: size.width,
      child: DecoratedBox(
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/greybg.jpg.webp"),
            )
        ),
        child: Center(
          child: Padding(
            padding: Responsive.isLargeScreen(context) ? const EdgeInsets.all(0) : const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Text(title, textAlign: TextAlign.center, style: GoogleFonts.poppins(
                    fontSize: 35, fontWeight: FontWeight.w800
                )),

                const SizedBox(height: 20),

                Text(subtitle, textAlign: TextAlign.center, style: const TextStyle(
                  fontSize: 16,
                )),

                const SizedBox(height: 40),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
