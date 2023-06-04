import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/Project/bizapp_project.dart';
import 'package:portfolio/UI/footer.dart';
import 'package:portfolio/UI/home.dart';
import 'package:portfolio/UI/project.dart';

import '../constant.dart';

class BizappayProject extends StatelessWidget {
  const BizappayProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "images/bizappay1.jpg",
      "images/bizappay2.jpg",
      "images/bizappay3.jpg",
      "images/bizappay4.jpg",
      "images/bizappay5.jpg",
      "images/bizappay6.jpg",
    ];

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Header(title: "Bizappay", subtitle: "Your payment gateway solution"),

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
                    child: Text("Bizappay is a online payment platform services for business and individual with a low rate charge. You can create, track and record transaction history "
                        "in one web-mobile application system to empower your business with the right tools to collect and record online payments. Bizappay also provides real-time reporting and analytics, customizable payment pages, and fraud prevention measures.\n\n"
                        "With current integration, Bizappay user have choices to choose payment method "
                        "either via FPX online banking, Shoppepay and Grabpay. Users also can use local or foreign credit card for the same purpose too.",

                        textAlign: TextAlign.justify, style: GoogleFonts.poppins(
                            fontSize: 16
                        )),
                  ),
                  const SizedBox(height: 40),

                  /// role
                  ConstantsWidget().roletext(),
                  Text("Lead Developer", style: GoogleFonts.poppins(
                      fontSize: 16, color: Colors.black54, fontWeight: FontWeight.w500
                  )),
                  const SizedBox(height: 50),

                  /// tools
                  ConstantsWidget().toolstext(),
                  Text("Flutter (Provider State Management), Dart, Android Studio, RestAPI", style: GoogleFonts.poppins(
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
                      ConstantsWidget().buttonAndroidpopup(context, url: "https://play.google.com/store/apps/details?id=com.bizapp.bizappay&hl=en&gl=US"),
                      ConstantsWidget().buttonIospopup(context, url: "https://apps.apple.com/my/app/bizappay/id1525672898"),
                      ConstantsWidget().buttonwebpopup(context, url: "https://www.bizappay.my"),
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
