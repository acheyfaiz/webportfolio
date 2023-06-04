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
                  Padding(
                    padding: EdgeInsets.only(right: Responsive.isLargeScreen(context) ? 30 : 0),
                    child: Text("Bizapp X is a revamp apps from existing app Bizapp v7. Bizapp is utilised by online and offline businesses to manage order data and sales. "
                        "Nowadays any entreprenuers should engage with e-commerce or they will be left behind. Our target audience is dropship, agents, stockists and headquarters (HQ). "
                        "Some of brand name that are using Bizapp is Simplysiti, Rizka, Byreefa and many more.\n\n"
                        "During development, the challenges I face is to compute commission price for agents. In Bizapp, you can have up to 6 prices for your agents price. "
                        "Futhermore, Bizapp also have complex structure and more than 20 module (features) for users to use.",
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
                  Text("Flutter (Provider State Management), Dart, Android Studio, RestAPI, CI/CD Pipeline", style: GoogleFonts.poppins(
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
                      ConstantsWidget().buttonAndroidpopup(context, url: "https://play.google.com/store/apps/details?id=com.bizapp.bizappx&hl=en"),
                      ConstantsWidget().buttonIospopup(context, url: "https://apps.apple.com/my/app/bizapp-x/id1581323969"),
                      ConstantsWidget().buttonwebpopup(context, url: "https://www.bizapp.com.my"),
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
    final Size size = MediaQuery.of(context).size;

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
