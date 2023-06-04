import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  Padding(
                    padding: EdgeInsets.only(right: Responsive.isLargeScreen(context) ? 30 : 0),
                    child: Text("BizApp POS is a Point-of-Sale focused app that are designed to help Ultimate & Privilege package users "
                        "utilise our existing POS module from our website and allow them to connect with other "
                        "POS related appliances such as cash drawers, thermal printers, and so on. This software is available either for your smartphone, tablet, desktop and coming soon to web version.",
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
                  Text("Flutter, Dart, Kotlin, Android Studio, RestAPI, Third party Integration, CI/CD Pipeline", style: GoogleFonts.poppins(
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
                      ConstantsWidget().buttonAndroidpopup(context, url: "https://play.google.com/store/apps/details?id=com.bizapp_pos"),
                      ConstantsWidget().buttonIospopup(context, url: "https://apps.apple.com/us/app/bizappos/id1638684895"),
                      ConstantsWidget().buttonwebpopup(context, url: "https://www.bizappos.com"),
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
