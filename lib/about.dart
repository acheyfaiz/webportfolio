import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    List<String> list = [
      "Dart",
      "Flutter",
      "Firebase",
      "CSS",
      "HTML",
      "PHP",
      "Laravel",
      "Nodejs",
    ];

    return Container(
      color: Colors.grey[50],
      width: size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const SizedBox(height: 40),

          Text("ABOUT ME", style: GoogleFonts.poppins(
            fontSize: 30, fontWeight: FontWeight.w700
          )),

          Container(
            height: 3, color: Colors.blue[400],
            width: 30, margin: const EdgeInsets.only(top: 30, bottom: 20),
          ),

          /// subtitle
          const Text("Here you will find more information about me, what i do and my current skills\n"
              "mostly in terms of programming and technology",
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 16
          )),

          const SizedBox(height: 80),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                /// row-col kiri
                Expanded(
                  flex: 1,
                  child: ColoredBox(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Container(
                            height: size.height / 2,
                            width: size.width / 4,
                            color: Colors.black54,
                            child: const Image(
                              fit: BoxFit.cover,
                              image: AssetImage("images/profile-picture.jpg"),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),


                /// row-col kanan
                Expanded(
                  flex: 2,
                  child: ColoredBox(
                    color: Colors.transparent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text("Get to know me !", style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold
                        )),

                        SizedBox(height: 30),

                        Text("I'm a Frontend Mobile Developer using Flutter framework.\nCheck out some of my work in the Projects section.\n"
                            "Feel free to connect or follow me on my Linkedin",
                            style: TextStyle(
                                fontSize: 16, height: 1.6
                            )),

                        SizedBox(height: 20),

                        Text("I'm open to job opportunities where i can contribute, learn and grow.\n"
                            "If you have a good opportunity that matches my skills and experience\nthen don't hesitate to contact me",
                            style: TextStyle(
                                fontSize: 16, height: 1.6
                            )
                        ),

                        const SizedBox(height: 30),

                        const Text("My Skills", style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold,
                        )),

                        const SizedBox(height: 30),

                        Wrap(
                          runSpacing: 10,
                          children: list.map((e) => Container(
                            decoration: BoxDecoration(
                                color: const Color(0xE7E7E7E7),
                                borderRadius: BorderRadius.circular(3)
                            ),
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                            child: Text(e, style: const TextStyle(
                                fontSize: 14, color: Colors.black54, fontWeight: FontWeight.bold
                            )),
                          )).toList(),
                        ),

                        const SizedBox(height: 80),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          const SizedBox(height: 50),

        ],
      ),
    );
  }
}