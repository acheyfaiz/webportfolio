import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

import 'home.dart';

class Connect extends StatelessWidget {
  const Connect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Container(
      color: Colors.grey[50],
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const SizedBox(height: 40),

          Text("Contact", style: GoogleFonts.poppins(
              fontSize: 30, fontWeight: FontWeight.w700
          )),

          Container(
            height: 3, color: Colors.blue[400],
            width: 30, margin: const EdgeInsets.only(top: 30, bottom: 20),
          ),

          const Text("If you have a good opportunity that matches my skills and experience\nthen don't hesitate to connect and contact me via linkedin or email.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16
              )
          ),

          const SizedBox(height: 80),

          Padding(
            padding: EdgeInsets.only(left: Responsive.isLargeScreen(context) ? 0 : 50),
            child: Wrap(
              runSpacing: 20,
              children: [
                // MaterialButton(
                //   padding: const EdgeInsets.symmetric(horizontal: 80),
                //   hoverColor: const Color(0xff0072b1).withOpacity(.3),
                //   onPressed: (){
                //     html.window.open("https://www.linkedin.com/in/muhdfaizz/", "_blank");
                //   },
                //   height: 50,
                //   color: const Color(0xff0072b1),
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(80)),
                //   child: const Text("Linkedin", style: TextStyle(
                //       fontSize: 13, color: Colors.white
                //   )),
                // ),

                InkWell(
                  onTap: (){
                    html.window.open("https://www.linkedin.com/in/muhdfaizz/", "_blank");
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xff0072b1),
                      borderRadius: BorderRadius.circular(80)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 12),
                      child: Text("Linkedin", style: TextStyle(
                          fontSize: 13, color: Colors.white
                      )),
                    ),
                  ),
                ),

                const SizedBox(width: 50),

                InkWell(
                  onTap: (){
                    html.window.open("mailto:mhdxfaiz@gmail.com", "_blank");
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(80)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 12),
                      child: Text("E-mail", style: TextStyle(
                          fontSize: 13, color: Colors.black
                      )),
                    ),
                  ),
                ),

                // MaterialButton(
                //   padding: const EdgeInsets.symmetric(horizontal: 85),
                //   hoverColor: const Color(0xffD6D6D6),
                //   onPressed: (){
                //     html.window.open("mailto:mhdxfaiz@gmail.com", "_blank");
                //   },
                //   height: 50,
                //   color: Colors.grey[200],
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(80)),
                //   child: const Text("E-mail", style: TextStyle(
                //       fontSize: 13, color: Colors.black
                //   )),
                // ),
              ],
            ),
          ),

          const SizedBox(height: 100),

        ],
      ),
    );
  }
}
