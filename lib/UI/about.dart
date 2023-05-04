import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/home.dart';

class About extends StatelessWidget {
  About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "Dart",
      "Flutter",
      "Firebase",
      "CSS",
      "HTML",
      "PHP",
      "Laravel",
      "Nodejs",
      "REST Api",
      "Android Development",
      "CI/CD",
    ];

    return Responsive.isLargeScreen(context) ? _web(context, list) : _mobile(context, list);
  }

  bool _isHovering = false;
  Widget _web(context, List list){
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[50],
      width: size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const SizedBox(height: 60),

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

                        const Text("Get to know me !", style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold
                        )),

                        const SizedBox(height: 30),

                        // const Text("From Big Data Technology as intern to Bizapp Ventures Sdn Bhd, I was sharpened to develop mobile apps by using Flutter framework until I success to deliver in the project section. "
                        //     "Currently, I work at Bizapp Ventures as a Mobile Apps Developer. I like to craft solid and scalable frontend products with great user experience. For the past 3 years, i have successfully delivered 4 projects related to my company objective.",
                        //     style: TextStyle(
                        //         fontSize: 16, height: 1.6
                        //     )),

                        const AboutMeDesc(),

                        const SizedBox(height: 30),

                        const Text("My Knowledge", style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold,
                        )),

                        const SizedBox(height: 30),

                        StatefulBuilder(
                          builder: (context, setState)=> Wrap(
                            runSpacing: 10,
                            children: list.map((e) => MouseRegion(
                              onEnter: (event) => setState(() => _isHovering = true),
                              onExit: (event) => setState(() => _isHovering = false),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeInOut,
                                transform: _isHovering ? Matrix4.rotationZ(0.1) : Matrix4.rotationZ(0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xE7E7E7E7),
                                      borderRadius: BorderRadius.circular(3),
                                    // boxShadow: [
                                    //   boxShadow(),
                                    // ],
                                  ),
                                  margin: const EdgeInsets.only(right: 10),
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                                  child: Text(e, style: const TextStyle(
                                      fontSize: 14, color: Colors.black54, fontWeight: FontWeight.bold
                                  )),
                                ),
                              ),
                            )).toList(),
                          ),
                        ),

                        const SizedBox(height: 80),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          const SizedBox(height: 80),

        ],
      ),
    );
  }

  Widget _mobile(context, List list){
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[50],
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
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

          const SizedBox(height: 50),

          Container(
            height: size.height / 2,
            width: size.width,
            color: Colors.black54,
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage("images/profile-picture.jpg"),
            ),
          ),

          const SizedBox(height: 40),

          const Text("Get to know me !", style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold
          )),

          const SizedBox(height: 30),

          const AboutMeDesc(),

          const SizedBox(height: 30),

          const Text("My Knowledge", style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold,
          )),

          const SizedBox(height: 30),

          Wrap(
            runSpacing: 10,
            children: list.map((e) => Container(
              decoration: BoxDecoration(
                  // boxShadow: [
                  //   boxShadow(),
                  // ],
                  color: const Color(0xE7E7E7E7),
                  borderRadius: BorderRadius.circular(3)),
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
    );
  }

  /// for shadow color - knowledge section
  BoxShadow boxShadow(){
    return BoxShadow(
      color: Colors.blue[400]!,
      blurRadius: 1.0,
      spreadRadius: 0.0,
      offset: const Offset(
        0.0,
        2.0,
      ),
    );
  }

}

/// About me description
class AboutMeDesc extends StatelessWidget {
  const AboutMeDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Hi, I'm Muhammad Faiz, a mobile app developer with 4 years of experience in building innovative and user-friendly apps for both iOS and Android platform. "
        "I have a strong foundation in programming languages such as Dart and Kotlin. I'm well-versed in using frameworks like Flutter for cross-platform development. "
        "Additionally, I have experience in integrating APIs, payment gateways, and third-party services.",
        style: TextStyle(
            fontSize: 16, height: 1.6
        )
    );
  }
}

