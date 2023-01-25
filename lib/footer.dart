import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width, height: size.height * .3,
      child: ColoredBox(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              const SizedBox(height: 40),

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
              const Text("Copyright 2023. Made with Flutter 💙", style: TextStyle(
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
              children: [

                IconButton(
                    icon: const FaIcon(FontAwesomeIcons.github),
                    color: Colors.grey[600],
                    iconSize: 16.0,
                    padding: const EdgeInsets.all(0),
                    onPressed: () {}),

                IconButton(
                    icon: const FaIcon(FontAwesomeIcons.twitter),
                    color: Colors.grey[600],
                    iconSize: 16.0,
                    padding: const EdgeInsets.all(0),
                    onPressed: () {}),

                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.linkedin),
                  color: Colors.grey[600],
                  onPressed: () {},
                  iconSize: 16.0,
                  padding: const EdgeInsets.all(0),
                ),

              ],
            )

          ],
        ),

      ],
    );
  }
}

