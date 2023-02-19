import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/aware_project.dart';
import 'package:portfolio/UI/bizapp_project.dart';
import 'package:portfolio/UI/bizappay_project.dart';

import 'package:portfolio/UI/home.dart';
import 'package:portfolio/UI/quranly_project.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<ProjectDetail> project = [

      ProjectDetail(
          title: "Bizapp X",
          // desc: "Bizapp is an application available in Android, IOS and web platforms. Bizapp is utilised by online and offline businesses, basic agents, dropship agents, stockists and headquarters to manage order data. "
          //     "Any entreprenuers should engage with E-commerce or they will be left behind. Bizapp has a clear and easy interface that will make entreprenuers fell in love and help their business to grow.",
          desc: "BizApp X is a new-look BizApp application, which help you as agent or dropship to follow HQ/Stokist or monitor your sales",
          image: "images/bizapp1.jpg",
          image2: "images/bizapp2.jpg",
          image3: "images/bizapp3.jpg",
          image4: "images/bizapp4.jpg",
          image5: "images/bizapp5.jpg",
          image6: "images/bizapp6.jpg",
          urlAndroid: "https://play.google.com/store/apps/details?id=com.bizapp.bizappx&hl=en",
          urlios: "https://apps.apple.com/my/app/bizapp-x/id1581323969"),

      ProjectDetail(
          title: "Bizappay",
          desc: "Bizappay provides online payment platform services for businesses and individuals with a low charge rate. Create, track & record transaction in one web-mobile application system to empower your business with right tools to collect and record online payments.",
          image: "images/bizappay1.jpg",
          image2: "images/bizappay2.jpg",
          image3: "images/bizappay3.jpg",
          image4: "images/bizappay4.jpg",
          image5: "images/bizappay5.jpg",
          image6: "images/bizappay6.jpg",
          urlAndroid: "https://play.google.com/store/apps/details?id=com.bizapp.bizappay&hl=en&gl=US",
          urlios: "https://apps.apple.com/my/app/bizappay/id1525672898"),

      ProjectDetail(
          title: "Quranly",
          desc: "A habit-building Quran app that brings a habit-centered, routine-driven approach to Quran reading. It gives you a visual tracker representation of your daily progress to stay motivated to reach your goals. ",
          image: "images/quranly1.jpg",
          image2: "images/quranly2.jpg",
          image3: "images/quranly3.jpg",
          image4: "images/quranly4.jpg",
          image5: "images/quranly5.jpg",
          image6: "images/quranly6.jpg",
          urlAndroid: "https://play.google.com/store/apps/details?id=com.quranly.app&hl=en&gl=US",
          urlios: "https://apps.apple.com/my/app/quranly/id1559233786"),

      ProjectDetail(
          title: "Aware",
          desc: "Aware Academy has been helping thousands of Muslims around the world combat porn addiction for the past 17 years",
          image: "images/aware1.jpg",
          image2: "images/aware2.jpg",
          image3: "images/aware3.jpg",
          image4: "images/aware4.jpg",
          image5: "images/aware5.jpg",
          image6: "images/aware6.jpg",
          urlAndroid: "https://play.google.com/store/apps/details?id=au.com.awareacademy&hl=en&gl=US",
          urlios: "https://apps.apple.com/my/app/aware-academy/id1611163995"),

    ];

    return Responsive.isLargeScreen(context) ? _web(context, project) : _mobile(context, project);
  }

  _showpopup(context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Opps..'),
          content: const Text('Case study is not available right now.'),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _web(context, List<ProjectDetail> project){
    final Size size = MediaQuery.of(context).size;
    return ColoredBox(
      color: Colors.white,
      child: SizedBox(
        width: size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(height: 40),

            Text("PROJECTS", style: GoogleFonts.poppins(
                fontSize: 30, fontWeight: FontWeight.w700
            )),

            Container(
              height: 3, color: Colors.blue[400],
              width: 30, margin: const EdgeInsets.only(top: 30, bottom: 20),
            ),

            /// subtitle
            const Text("Here you will find some personal and clients projects that i created\nwith each containing its own case study",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16
                )),

            const SizedBox(height: 80),

            ...project.map((e) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                const SizedBox(height: 70),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    /// image
                    SizedBox(
                      width: size.width * .5,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: size.height / 2,
                            color: Colors.black54,
                            child: Image(
                              image: AssetImage(e.image),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            height: size.height / 2,
                            color: Colors.black54,
                            child: Image(
                              image: AssetImage(e.image2),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: size.width * .5,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(e.title, style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20
                            )),

                            const SizedBox(height: 20),

                            Text(e.desc, style:const  TextStyle(
                                fontSize: 17
                            )),

                            const SizedBox(height: 40),
                            
                            MaterialButton(
                                onPressed: (){
                                  e.title == "Bizapp X" ? _showbizapp(context, project, "1") :
                                  e.title == "Bizappay" ? _showbizapp(context, project, "2") :
                                  e.title == "Quranly" ? _showbizapp(context, project, "3") :
                                  e.title == "Aware" ? _showbizapp(context, project, "4") : _showpopup(context);
                                },
                              color: Colors.blue[400],
                              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80), // <-- Radius
                              ),
                              elevation: 1,
                              child: const Text("View Case Study", style: TextStyle(
                                  fontSize: 13, color: Colors.white,
                              )),
                            ),

                            const SizedBox(height: 20),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),

                const SizedBox(height: 70),

                Container(
                  color: Colors.grey[200]!,
                  width: size.width,
                  margin: const EdgeInsets.only(right: 80, left: 110),
                  height: 2,
                ),

              ],
            )).toList(),

            const SizedBox(height: 100),

          ],
        ),
      ),
    );
  }

  Widget _mobile(context, List<ProjectDetail> project){
    final Size size = MediaQuery.of(context).size;
    return ColoredBox(
      color: Colors.white,
      child: SizedBox(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(height: 40),

              Text("PROJECTS", style: GoogleFonts.poppins(
                  fontSize: 30, fontWeight: FontWeight.w700
              )),

              Container(
                height: 3, color: Colors.blue[400],
                width: 30, margin: const EdgeInsets.only(top: 30, bottom: 20),
              ),

              /// subtitle
              const Text("Here you will find some personal and clients projects that i created with each containing its own case study",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16
                  )),

              ...project.map((e) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  const SizedBox(height: 70),

                  /// image
                  SizedBox(
                    width: size.width * .9,
                    height: 500,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        ProjectImages(img: e.image),
                        const SizedBox(width: 20),
                        ProjectImages(img: e.image2),
                      ]
                    ),
                  ),

                  const SizedBox(height: 30),

                  Text(e.title, style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20
                  )),

                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(e.desc.replaceAll("\n", ""), textAlign: TextAlign.justify, style: const TextStyle(
                        fontSize: 17
                    )),
                  ),

                  const SizedBox(height: 40),

                  MaterialButton(
                    onPressed: (){
                      e.title == "Bizapp X" ? _showbizapp(context, project, "1") :
                      e.title == "Bizappay" ? _showbizapp(context, project, "2") :
                      e.title == "Quranly" ? _showbizapp(context, project, "3") :
                      e.title == "Aware" ? _showbizapp(context, project, "4") : _showpopup(context);
                    },
                    color: Colors.blue[400],
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80), // <-- Radius
                    ),
                    elevation: 1,
                    child: const Text("View Case Study", style: TextStyle(
                      fontSize: 13, color: Colors.white,
                    )),
                  ),

                  const SizedBox(height: 40),

                  Container(
                    color: Colors.grey[200]!,
                    width: size.width,
                    margin: const EdgeInsets.only(right: 20, left: 20),
                    height: 2,
                  ),

                ],
              )).toList(),

              const SizedBox(height: 150),

            ],
          ),
        ),
      ),
    );
  }

  _showbizapp(context, List<ProjectDetail> project, String num){
    return showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return num == "1" ? const BizappProject()
            : num == "2" ? const BizappayProject()
            : num == "3" ? const QuranlyProject()
            : num == "4" ? const AwareProject() : const SizedBox();
      },
    );
  }


}

class ProjectImages extends StatelessWidget {
  final String img;
  const ProjectImages({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 2,
      color: Colors.black54,
      child: Image(
        image: AssetImage(img),
      ),
    );
  }
}

class ProjectDetail{

  late String title;
  late String desc;
  late String image;
  late String image2;
  late String image3;
  late String image4;
  late String image5;
  late String image6;
  late String urlAndroid;
  late String urlios;

  ProjectDetail(
      {
        required this.title,
        required this.desc,
        required this.image,
        required this.image2,
        required this.image3,
        required this.image4,
        required this.image5,
        required this.image6,
        required this.urlAndroid,
        required this.urlios
      });
}