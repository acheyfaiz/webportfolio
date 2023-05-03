import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

import '../UI/home.dart';

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
          padding: Responsive.isLargeScreen(context) ? const EdgeInsets.symmetric(horizontal: 140, vertical: 50)
              : const EdgeInsets.symmetric(horizontal: 5, vertical: 50),
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
              /// (v1.2.1)
              const Text("© Copyright 2023. Hand-Made with Flutter 💙", textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white, fontSize: 12
              )),
              const Text("Last updated: 03/05/2023", textAlign: TextAlign.center, style: TextStyle(
                  color: Colors.white, fontSize: 11, fontStyle: FontStyle.italic
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
      //FooterOption(url: 'https://twitter.com/mhdfaizz_', icon: FontAwesomeIcons.twitter),
      FooterOption(url: 'https://www.linkedin.com/in/muhdfaizz/', icon: FontAwesomeIcons.linkedin),
    ];

    return Responsive.isLargeScreen(context) ? _web(list) : _mobile(list);
  }

  _web(List<FooterOption> list){
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
                  icon: FaIcon(e.icon, color: Colors.white))
              ).toList(),
            )

          ],
        ),

      ],
    );
  }

  _mobile(List<FooterOption> list){
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
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

        const SizedBox(height: 30),

        /// social account
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text("SOCIAL", style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold,
                color: Colors.white
            )),

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
                  icon: FaIcon(e.icon, color: Colors.white))
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

