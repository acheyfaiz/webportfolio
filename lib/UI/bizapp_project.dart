import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/constant.dart';
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
                    child: Text("Bizapp X is a revamp apps from existing app Bizapp v7. Bizapp is utilised by online and offline businesses to manage order data and sales. "
                        "Nowadays any entreprenuers should engage with e-commerce or they will be left behind. Our target audience is dropship, agents, stockists and headquarters (HQ). "
                        "Some of brand name that are using Bizapp is Simplysiti, Rizka, Byreefa and many more.\n\n"
                        "During development, the challenges I face is to compute commission price for agents. In Bizapp, you can have up to 6 prices for your agents price. "
                        "Futhermore, Bizapp also have complex structure and more than 20 module (features) for users to use.",
                        textAlign: TextAlign.justify, style: GoogleFonts.poppins()),
                  ),
                  const SizedBox(height: 40),

                  /// role
                  ConstantsWidget().roletext(),
                  Text("Lead Developer", style: GoogleFonts.poppins(
                      fontSize: 16, color: Colors.black54, fontWeight: FontWeight.w500
                  )),
                  const SizedBox(height: 20),

                  /// tools
                  ConstantsWidget().toolstext(),
                  Text("Flutter (Provider State Management), Dart, Android Studio, RestAPI", style: GoogleFonts.poppins(
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
                      ConstantsWidget().buttonAndroidpopup(context, url: "https://play.google.com/store/apps/details?id=com.bizapp.bizappx&hl=en"),
                      ConstantsWidget().buttonIospopup(context, url: "https://apps.apple.com/my/app/bizapp-x/id1581323969"),
                      ConstantsWidget().buttonwebpopup(context, url: "https://www.bizapp.com.my"),
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
