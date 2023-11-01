import 'package:flutter/material.dart';
import 'package:portfolio/UI/Project/bizapp_project.dart';
import 'package:portfolio/UI/constant.dart';
import 'package:portfolio/UI/footer.dart';
import 'package:portfolio/UI/home.dart';

class BizappshopProject extends StatelessWidget {
  const BizappshopProject({super.key});

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

            const Header(title: "Bizappshop (Minishop)", subtitle: "Seamless website to boost sales"),

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
                  ProjectDetailDesc(desc: ConstantsWidget.textBizappshop),
                  const SizedBox(height: 40),

                  /// role
                  ConstantsWidget().roletext(),
                  const ProjectDetailAttribute(text: "Lead Developer"),
                  const SizedBox(height: 50),

                  /// tools
                  ConstantsWidget().toolstext(),
                  const ProjectDetailAttribute(text: "PHP, Laravel, Javascript, AWS Cloud, MySQL, VS Code, RestAPI, CI/CD Pipeline"),
                  const SizedBox(height: 50),

                  /// link
                  ConstantsWidget().linktext(),
                  const SizedBox(height: 20),

                  /// button
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [

                      ProjectButtonWeb(url: ConstantsWidget.urlbizappshop),
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
