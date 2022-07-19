import 'package:flutter/material.dart';
import 'package:portfolio/UI/feature_project.dart';
import 'package:portfolio/Widget/apppbar_title.dart';
import 'package:portfolio/Widget/main_title.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../Model/Method.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widget/custom_text.dart';
import 'about.dart';
import 'work.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Method method = Method();
  late AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
          () => _isAppBarExpanded ? isExpaned != false ? setState(() {
          isExpaned = false;
          print('setState is called');
        },
      ) : {} : isExpaned != true ? setState(() {
        print('setState is called');
        isExpaned = true;
      }) : {},
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        //backgroundColor: Color(0xff0A192F),
        backgroundColor: Colors.blue[50],
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              // Top Navigation Bar
              Container(
                height: size.height * 0.14,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      // icon triangle
                      IconButton(
                          icon: const Icon(
                            Icons.change_history,
                            size: 32.0,
                            color: Colors.transparent,
                          ),
                          onPressed: () {}),
                      Spacer(),

                      // tab bar box
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: DefaultTabController(
                            length: 4,
                            child: TabBar(
                              indicatorColor: Colors.orange[300],
                              onTap: (index) async {
                                _scrollToIndex(index);
                              },
                              tabs: [
                                Tab(
                                  child: AppBarTitle(
                                    text: 'About',
                                  ),
                                ),
                                Tab(
                                  child: AppBarTitle(
                                    text: 'Experience',
                                  ),
                                ),
                                Tab(
                                  child: AppBarTitle(
                                    text: 'Project',
                                  ),
                                ),
                                Tab(
                                  child: AppBarTitle(
                                    text: 'Contact',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // resume box
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Card(
                          elevation: 4.0,
                          //color: const Color(0xff64FFDA),
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(0.85),
                            height: size.height * 0.07,
                            width: size.height * 0.20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              //color: const Color(0xff0A192F),
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: FlatButton(
                              hoverColor: const Color(0xFF3E0449),
                              onPressed: () {},
                              child: const Text(
                                "Resume",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              // social media icon
              Row(
                children: [

                  Container(
                    width: size.width * 0.09,
                    height: size.height - 82,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: const FaIcon(FontAwesomeIcons.github),
                            color: Colors.grey[600],
                            iconSize: 16.0,
                            onPressed: () {
                              //method.launchURL("https://github.com/acheyfaiz");
                            }),
                        IconButton(
                            icon: const FaIcon(FontAwesomeIcons.twitter),
                            color: Colors.grey[600],
                            iconSize: 16.0,
                            onPressed: () {
                              //method.launchURL("https://twitter.com/mhdfaizz_");
                            }),
                        IconButton(
                          icon: const  FaIcon(FontAwesomeIcons.linkedin),
                          color: Colors.grey[600],
                          onPressed: () {
                            method.launchURL("https://www.linkedin.com/in/muhdfaizz/");
                          },
                          iconSize: 16.0,
                        ),
                        IconButton(
                            icon: const  Icon(Icons.call),
                            color: Colors.grey[600],
                            iconSize: 16.0,
                            onPressed: () {
                              //method.launchCaller();
                            }),
                        IconButton(
                            icon: const  Icon(Icons.mail),
                            color: Colors.grey[600],
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchEmail();
                            }),

                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: size.height * 0.20,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // main body
                  Expanded(
                    child: Container(
                      height: size.height - 82,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomScrollView(
                          controller: _autoScrollController,
                          slivers: <Widget>[
                            SliverList(
                                delegate: SliverChildListDelegate([
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: size.height * .06,
                                      ),
                                      CustomText(
                                        text: "Hi, my name is",
                                        textsize: 18,
                                        //color: Color(0xff41FBDA),
                                        color: Colors.black,
                                      ),

                                      const SizedBox(height: 6.0),

                                      CustomText(
                                        text: "Muhammad Faiz.",
                                        textsize: 68.0,
                                        //color: const Color(0xffCCD6F6),
                                        color: Colors.blue,
                                      ),

                                      const SizedBox(height: 4.0),

                                      CustomText(
                                        text:
                                        "I build things for the Android and iOS.",
                                        textsize: 56.0,
                                        color: Colors.blue.withOpacity(0.6),
                                      ),

                                      SizedBox(height: size.height * .04),

                                      Wrap(
                                        children: [
                                           Text(
                                            "I'm a developer based in Bangi, Selangor specializing in \nbuilding (and occasionally designing) \napplications, and everything in between.",
                                            style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 16.0,
                                              letterSpacing: 2.75,
                                              wordSpacing: 0.75,
                                            ),
                                          )
                                        ],
                                      ),

                                      SizedBox(height: size.height * .12),

                                      //get in tuch text
                                      InkWell(
                                        onTap: () {
                                          //method.launchEmail();
                                        },
                                        hoverColor: const Color(0xff64FFDA).withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(4.0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: size.height * 0.09,
                                          width: size.width * 0.14,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              //color: const Color(0xff64FFDA),
                                              color: Colors.blue,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(4.0),
                                          ),
                                          child: Text(
                                            "Get In Touch",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              //color: Color(0xff64FFDA),
                                              color: Colors.black.withOpacity(.8),
                                              letterSpacing: 2.75,
                                              wordSpacing: 1.0,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(height: size.height * 0.20),
                                    ],
                                  ),

                                  //About Me
                                  _wrapScrollTag(
                                    index: 0,
                                    child: About(),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),

                                  //Where I've Worked
                                  _wrapScrollTag(
                                      index: 1,
                                      child: Work()
                                  ),

                                  SizedBox(height: size.height * 0.10),

                                  //Some Things I've Built Main Project
                                  _wrapScrollTag(
                                      index: 2,
                                      child: Column(
                                        children: [

                                          MainTitle(
                                              number: "0.3",
                                              text: "Some Things I've Built"),

                                          SizedBox(
                                            height: size.height * 0.04,
                                          ),
                                          FeatureProject(
                                            imagePath: "images/pic9.jpg",
                                            ontab: () {
                                              method.launchURL(
                                                  "https://github.com/champ96k/WhatsApp--UI-Clone");
                                            },
                                            projectDesc:
                                            "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                                            projectTitle: "WhatsaApp UI Clone",
                                            tech1: "Flutter",
                                            tech2: "Dart",
                                            tech3: "Flutter UI",
                                          ),

                                          // // MainTiitle(
                                          // //   number: "0.4",
                                          // //   text: "Open Source Project",
                                          // // ),
                                          //
                                          // SizedBox(
                                          //   height: size.height * 0.04,
                                          // ),
                                          //
                                          // //other Projects
                                          // Container(
                                          //   height: size.height * 0.86,
                                          //   width: size.width - 100,
                                          //   child: Column(
                                          //     children: [
                                          //       Row(
                                          //         mainAxisAlignment:
                                          //         MainAxisAlignment.spaceAround,
                                          //         children: [
                                          //           OSImages(
                                          //             image: "images/pic101.png",
                                          //           ),
                                          //           OSImages(
                                          //             image: "images/pic103.png",
                                          //           ),
                                          //           OSImages(
                                          //             image: "images/pic111.gif",
                                          //           ),
                                          //           OSImages(
                                          //             image: "images/pic113.jfif",
                                          //           ),
                                          //         ],
                                          //       ),
                                          //       SizedBox(
                                          //         height: size.height * 0.04,
                                          //       ),
                                          //       Row(
                                          //         mainAxisAlignment:
                                          //         MainAxisAlignment.spaceAround,
                                          //         children: [
                                          //           CustomText(
                                          //             text: "Payment Getway",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //           CustomText(
                                          //             text: "Chat App",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //           CustomText(
                                          //             text: "Spotify Clone",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //           CustomText(
                                          //             text: "TODO App",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //         ],
                                          //       ),
                                          //     ],
                                          //   ),
                                          // ),
                                          //
                                          // //other Projects
                                          // Container(
                                          //   height: size.height * 0.86,
                                          //   width: size.width - 100,
                                          //   child: Column(
                                          //     children: [
                                          //       Row(
                                          //         mainAxisAlignment:
                                          //         MainAxisAlignment.spaceAround,
                                          //         children: [
                                          //           OSImages(
                                          //             image: "images/pic114.png",
                                          //           ),
                                          //           OSImages(
                                          //             image: "images/pic115.png",
                                          //           ),
                                          //           OSImages(
                                          //             image: "images/pic116.jfif",
                                          //           ),
                                          //           OSImages(
                                          //             image: "images/pic117.png",
                                          //           ),
                                          //         ],
                                          //       ),
                                          //       SizedBox(
                                          //         height: size.height * 0.04,
                                          //       ),
                                          //       Row(
                                          //         mainAxisAlignment:
                                          //         MainAxisAlignment.spaceAround,
                                          //         children: [
                                          //           CustomText(
                                          //             text: "Spannish Audio",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //           CustomText(
                                          //             text: "Drumpad",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //           CustomText(
                                          //             text: "Currency Converter",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //           CustomText(
                                          //             text: "Calculator",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //         ],
                                          //       ),
                                          //     ],
                                          //   ),
                                          // ),
                                          //
                                          // //other Projects
                                          // Container(
                                          //   height: size.height * 0.86,
                                          //   width: size.width - 100,
                                          //   child: Column(
                                          //     children: [
                                          //       Row(
                                          //         mainAxisAlignment:
                                          //         MainAxisAlignment.spaceAround,
                                          //         children: [
                                          //           OSImages(
                                          //             image: "images/pic118.jpeg",
                                          //           ),
                                          //           OSImages(
                                          //             image: "images/pic119.jpeg",
                                          //           ),
                                          //           OSImages(
                                          //             image: "images/pic120.png",
                                          //           ),
                                          //           OSImages(
                                          //             image: "images/pic121.png",
                                          //           ),
                                          //         ],
                                          //       ),
                                          //       SizedBox(
                                          //         height: size.height * 0.04,
                                          //       ),
                                          //       Row(
                                          //         mainAxisAlignment:
                                          //         MainAxisAlignment.spaceAround,
                                          //         children: [
                                          //           CustomText(
                                          //             text: "Prime Videos UI",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //           CustomText(
                                          //             text: "Tic Tac Toe Game",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //           CustomText(
                                          //             text: "Currency Converter UI",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //           CustomText(
                                          //             text: "Love Calculator",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //         ],
                                          //       ),
                                          //     ],
                                          //   ),
                                          // ),

                                        ],
                                      )
                                  ),

                                  const SizedBox(
                                    height: 6.0,
                                  ),

                                  //Get In Touch
                                  _wrapScrollTag(
                                    index: 3,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.68,
                                          width: MediaQuery.of(context).size.width -
                                              100,
                                          // color: Colors.orange,
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              CustomText(
                                                text: "0.4 What's Next?",
                                                textsize: 16.0,
                                                color: Colors.black,
                                              ),
                                              const SizedBox(
                                                height: 16.0,
                                              ),

                                              CustomText(
                                                text: "Get In Touch",
                                                textsize: 42.0,
                                                color: Colors.black45,
                                              ),
                                              const SizedBox(
                                                height: 16.0,
                                              ),

                                              Wrap(
                                                children: [
                                                  Text(
                                                    "My inbox is always open whether you have a question or just want to say hi, I'll try my \nbest to get back to you!",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black
                                                          .withOpacity(0.4),
                                                      letterSpacing: 0.75,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 32.0,
                                              ),

                                              InkWell(
                                                onTap: () {
                                                  method.launchEmail();
                                                },
                                                child: Card(
                                                  elevation: 4.0,
                                                  color: Colors.blue,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(6.0),
                                                  ),
                                                  child: Container(
                                                    margin: EdgeInsets.all(0.85),
                                                    height: size.height * 0.09,
                                                    width: size.width * 0.10,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue[50],
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                    ),
                                                    child: const Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                                                      child: Text(
                                                        "Say Hello",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        //Footer
                                        Container(
                                          alignment: Alignment.center,
                                          //height: MediaQuery.of(context).size.height / 6,
                                          width: MediaQuery.of(context).size.width - 100,
                                          //color: Colors.white,
                                          child: Text(
                                            "Designed & Built by Faiz 💙 Flutter\n(v${Method().version})",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black.withOpacity(0.4),
                                              letterSpacing: 1.75,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),

                                        const SizedBox(height: 150)

                                      ],
                                    ),
                                  ),
                                ])),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                    height: MediaQuery.of(context).size.height - 82,
                    //color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RotatedBox(
                          quarterTurns: 45,
                          child: Text(
                            "mhdxfaiz@gmail.com",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              letterSpacing: 3.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: 100,
                            width: 2,
                            color: Colors.grey.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
