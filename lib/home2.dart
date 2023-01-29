import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'about.dart';
import 'footer.dart';
import 'project.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {

  late AutoScrollController _autoScrollController;

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index, preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: fab(),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   flexibleSpace: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //
      //       MenuAppBar(
      //         text: 'HOME',
      //       ),
      //       MenuAppBar(
      //         text: 'HOME',
      //       ),
      //       MenuAppBar(
      //         text: 'HOME',
      //       ),
      //       MenuAppBar(
      //         text: 'HOME',
      //       ),
      //     ],
      //   ),
      //
      // ),
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
          child: Column(
            children: [

              /// menu appbar
              // SizedBox(
              //   width: size.width,
              //   height: size.height * 0.1,
              //   child: Row(
              //     children: [
              //
              //       const Spacer(),
              //
              //       Expanded(
              //         child: DefaultTabController(
              //           length: 4,
              //           child: TabBar(
              //             indicatorColor: Colors.transparent,
              //             onTap: (index) {
              //              //  _scrollToIndex(index);
              //             },
              //             tabs: const [
              //
              //               Tab(
              //                 child: MenuAppBar(
              //                   text: 'HOME',
              //                 ),
              //               ),
              //
              //               Tab(
              //                 child: MenuAppBar(
              //                   text: 'EXPERIENCE',
              //                 ),
              //               ),
              //
              //               Tab(
              //                 child: MenuAppBar(
              //                   text: 'PROJECT',
              //                 ),
              //               ),
              //
              //               Tab(
              //                 child: MenuAppBar(
              //                   text: 'CONTACT',
              //                 ),
              //               ),
              //
              //             ],
              //           ),
              //         ),
              //       ),
              //
              //     ],
              //   ),
              // ),

              const BodyContent(),

              const Footer()

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

class MenuAppBar extends StatelessWidget {
  final String text;
  const MenuAppBar({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: 13,
        color: Colors.black, fontWeight: FontWeight.bold
      ),
    );
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Text("HEY, I'M MUHAMMAD FAIZ", style: GoogleFonts.poppins(
                      fontSize: 35, fontWeight: FontWeight.w800
                  )),

                  const SizedBox(height: 20),

                  const Text("Ready to explore my portfolio?  Let's check it out", style: TextStyle(
                      fontSize: 16,
                  )),

                  const SizedBox(height: 40),

                  MaterialButton(
                    onPressed: (){},
                    minWidth: 150,
                    height: 50,
                    color: Colors.blue[400],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                    child: const Text("PROJECTS", style: TextStyle(
                      color: Colors.white
                    )),
                  ),

                ],
              ),
            ),
          ),
        ),

        const About(),

        const Project(),

      ],
    );
  }
}


