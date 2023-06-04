import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/connect.dart';
import 'package:portfolio/UI/education.dart';
import 'package:portfolio/UI/home.dart';
import 'package:portfolio/UI/work_exp.dart';

import 'about.dart';
import 'footer.dart';
import '../UI/project.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: fab(),
      body: NotificationListener(
        onNotification: (t){
          if (t is ScrollEndNotification) {
            if(controller.position.pixels > 100){
              setState(() {
                showfab = true;
              });
            }else{
              setState(() {
                showfab = false;
              });
            }

            return true;
          }else{
            return false;
          }
        },
        child: SingleChildScrollView(
          controller: controller,
          physics: const BouncingScrollPhysics(),
          child: const Column(
            children: [

              BodyContent(),

              Footer()

            ],
          ),
        ),
      ),
    );
  }

  bool showfab = false;
  final ScrollController controller = ScrollController();

  Widget fab(){
    if(showfab == false){
      return const SizedBox();
    }else{
      return Container(
          margin: const EdgeInsets.only(bottom: 50),
          child: FloatingActionButton(
            onPressed: (){
              controller.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.easeOutQuint);
            },
            backgroundColor: Colors.blue,
            mini: true, elevation: 2,
            child: const Icon(Icons.keyboard_arrow_up, size: 25, color: Colors.white),
          ));
    }
  }

}

class BodyContent extends StatelessWidget {
  const BodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [

        /// image bg and text
        SizedBox(
          height: size.height * 1,
          width: size.width,
          child: DecoratedBox(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/greybg.jpg.webp"),
                )
            ),
            child: Center(
              child: Padding(
                padding: Responsive.isLargeScreen(context) ? const EdgeInsets.all(0) : const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    Text("HEY, ANONYMOUS!", textAlign: TextAlign.center, style: GoogleFonts.poppins(
                        fontSize: 35, fontWeight: FontWeight.w800
                    )),

                    const SizedBox(height: 20),

                    const Text("Are you ready to explore my portfolio?  Let's check it out!", textAlign: TextAlign.center, style: TextStyle(
                        fontSize: 16,
                    )),

                    const SizedBox(height: 40),

                  ],
                ),
              ),
            ),
          ),
        ),

        const About(),

        const Education(),

        const WorkExperience(),

        const Project(),

        const Connect()

      ],
    );
  }
}


