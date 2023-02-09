import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

import 'package:portfolio/UI/home.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<ProjectDetail> project = [

      ProjectDetail(
          title: "Bizapp X",
          desc: "BizApp X is a new-look BizApp application, which help you as agent or dropship to follow HQ/Stokist or monitor your sales",
          image: "images/img1.png",
          image2: "images/img2.png",
          urlAndroid: "https://play.google.com/store/apps/details?id=com.bizapp.bizappx&hl=en",
          urlios: "https://apps.apple.com/my/app/bizapp-x/id1581323969"),

      ProjectDetail(
          title: "Bizappay",
          desc: "Bizappay provides online payment platform services\nfor businesses and individuals with a low charge rate",
          image: "images/bizappay.png",
          image2: "images/bizappay1.png",
          urlAndroid: "https://play.google.com/store/apps/details?id=com.bizapp.bizappay&hl=en&gl=US",
          urlios: "https://apps.apple.com/my/app/bizappay/id1525672898"),

      ProjectDetail(
          title: "Quranly",
          desc: "A habit-building Quran app that brings a habit-centered,\nroutine-driven approach to Quran reading",
          image: "images/quranly.png",
          image2: "images/quranly1.png",
          urlAndroid: "https://play.google.com/store/apps/details?id=com.quranly.app&hl=en&gl=US",
          urlios: "https://apps.apple.com/my/app/quranly/id1559233786"),

      ProjectDetail(
          title: "Aware",
          desc: "Aware Academy has been helping thousands of Muslims around the world combat porn addiction for the past 17 years",
          image: "images/aware.png",
          image2: "images/aware1.png",
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
          content: const Text('Case study not available right now.'),
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
                          const SizedBox(width: 10),
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

                            // MaterialButton(
                            //   padding: const EdgeInsets.symmetric(horizontal: 40),
                            //   onPressed: (){
                            //     // html.window.open('https://apps.apple.com/us/app/bizapp-x/id1581323969', "_blank");
                            //   },
                            //   height: 50,
                            //   color: Colors.blue[400],
                            //   shape: RoundedRectangleBorder(
                            //       borderRadius: BorderRadius.circular(5)),
                            //   child: const Text("View Study Case", style: TextStyle(
                            //       fontSize: 13, color: Colors.white
                            //   )),
                            // ),

                            InkWell(
                              onTap: (){
                                _showpopup(context);
                              },
                              child: const Text("View Study Case >>", style: TextStyle(
                                  fontSize: 13, color: Colors.black,
                                  decoration: TextDecoration.underline
                              )),
                            ),

                            const SizedBox(height: 20),

                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                MaterialButton(
                                  padding: const EdgeInsets.symmetric(horizontal: 40),
                                  hoverColor: const Color(0xff2FD37D),
                                  onPressed: (){
                                    html.window.open(e.urlAndroid, "_blank");
                                  },
                                  height: 50,
                                  color: Colors.grey[200],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(80)),
                                  child: const Text("Download for Android", style: TextStyle(
                                      fontSize: 13, color: Colors.black
                                  )),
                                ),

                                const SizedBox(width: 20),

                                MaterialButton(
                                  padding: const EdgeInsets.symmetric(horizontal: 40),
                                  hoverColor: const Color(0xffD6D6D6),
                                  onPressed: (){
                                    html.window.open(e.urlios,"_blank");
                                  },
                                  height: 50,
                                  color: Colors.grey[200],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(80)),
                                  child: const Text("Download for iOS", style: TextStyle(
                                      fontSize: 13, color: Colors.black
                                  )),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    )

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


            const SizedBox(height: 150),


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
                        Container(
                          height: size.height / 2,
                          color: Colors.black54,
                          child: Image(
                            image: AssetImage(e.image),
                          ),
                        ),
                        const SizedBox(width: 10),
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

                  InkWell(
                    onTap: (){
                      _showpopup(context);
                    },
                    child: const Text("View Case Study >>", style: TextStyle(
                        fontSize: 13, color: Colors.black,
                        decoration: TextDecoration.underline
                    )),
                  ),

                  const SizedBox(height: 20),

                  /// button
                  MaterialButton(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    hoverColor: const Color(0xff2FD37D),
                    onPressed: (){
                      html.window.open(e.urlAndroid, "_blank");
                    },
                    height: 50,
                    color: Responsive.isLargeScreen(context) ? Colors.grey[200] : const Color(0xff2FD37D),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80)),
                    child: const Text("Download for Android", style: TextStyle(
                        fontSize: 13, color: Colors.black
                    )),
                  ),

                  const SizedBox(height: 20),

                  MaterialButton(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    hoverColor: const Color(0xffD6D6D6),
                    onPressed: (){
                      html.window.open(e.urlios,"_blank");
                    },
                    height: 50,
                    color: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80)),
                    child: const Text("Download for iOS", style: TextStyle(
                        fontSize: 13, color: Colors.black
                    )),
                  ),

                  const SizedBox(height: 70),

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


}

class ProjectDetail{

  late String title;
  late String desc;
  late String image;
  late String image2;
  late String urlAndroid;
  late String urlios;

  ProjectDetail(
      {
        required this.title,
        required this.desc,
        required this.image,
        required this.image2,
        required this.urlAndroid,
        required this.urlios
      });
}
