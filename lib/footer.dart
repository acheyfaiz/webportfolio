import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: ColoredBox(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              const FooterDesc(),

              const SizedBox(height: 30),

              /// grey line divider
              SizedBox(
                height: 1, width: size.width,
                child: const ColoredBox(
                    color: Colors.grey
                ),
              ),

              const SizedBox(height: 30),

              /// copyright text
              const Text("Copyright 2023. Made with Flutter 💙 (v1.0.1)", style: TextStyle(
                color: Colors.white, fontSize: 13
              ))

            ],
          ),
        ),
      ),
    );
  }
}

class FooterDesc extends StatelessWidget {
  const FooterDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<FooterOption> list = [
      FooterOption(url: 'https://github.com/acheyfaiz', icon: FontAwesomeIcons.github),
      FooterOption(url: 'https://twitter.com/mhdfaizz_', icon: FontAwesomeIcons.twitter),
      FooterOption(url: 'https://www.linkedin.com/in/muhdfaizz/', icon: FontAwesomeIcons.linkedin),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        /// nama
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [

            Text("MUHAMMAD FAIZ", style: TextStyle(
             fontSize: 16, fontWeight: FontWeight.bold,
              color: Colors.white
            )),

            SizedBox(height: 20),

            Text("A Flutter developer building Frontend Design\nthat leads to the success of overall product.", style: TextStyle(
                fontSize: 14,
                color: Colors.white
            )),

          ],
        ),

        /// social account
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text("SOCIAL", style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold,
                  color: Colors.white
              )),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: list.map((e) => IconButton(
                hoverColor: Colors.blue,
                  color: Colors.grey[600],
                  iconSize: 16.0,
                  padding: const EdgeInsets.all(0),
                  onPressed: (){
                    html.window.open(e.url, "_blank");
                  },
                  icon: FaIcon(e.icon))
              ).toList(),
            )

          ],
        ),

      ],
    );
  }
}

class FooterOption {

  late String url;
  late IconData icon;

  FooterOption({required this.url, required this.icon});
}

