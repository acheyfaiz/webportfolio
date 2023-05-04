import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

import 'home.dart';

class ConstantsWidget {

  /// constant widget for popup case study
  MaterialButton closepopup(context){
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 83),
      hoverColor: Colors.blue[400],

      // onPressed: ()=> GoRouter.of(context).pop(true),
      onPressed: ()=> GoRouter.of(context).push("/"),
      height: 50,
      color: Responsive.isLargeScreen(context) ? Colors.grey[200] : Colors.blue[400],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80)),
      child: Text("Go Back", style: TextStyle(
          fontSize: 13, color: Responsive.isSmallScreen(context) ? Colors.white : Colors.black
      )),
    );
  }

  MaterialButton buttonAndroidpopup(context, {required String url}){
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      hoverColor: const Color(0xff2FD37D),
      onPressed: (){
        html.window.open(url, "_blank");
      },
      height: 50,
      color: Responsive.isLargeScreen(context) ? Colors.grey[200] : const Color(0xff2FD37D),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80)),
      child: const Text("Download for Android", style: TextStyle(
          fontSize: 13, color: Colors.black
      )),
    );
  }

  MaterialButton buttonIospopup(context, {required String url}){
    return  MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      hoverColor: const Color(0xffD6D6D6),
      onPressed: (){
        html.window.open(url,"_blank");
      },
      height: 50,
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80)),
      child: const Text("Download for iOS", style: TextStyle(
          fontSize: 13, color: Colors.black
      )),
    );
  }

  MaterialButton buttonwebpopup(context, {required String url}){
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 65),
      hoverColor: const Color(0xffD6D6D6),
      onPressed: (){
        html.window.open(url,"_blank");
      },
      height: 50,
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80)),
      child: const Text("Go to website", style: TextStyle(
          fontSize: 13, color: Colors.black
      )),
    );
  }

  Text roletext(){
    return Text("Role:", style: GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w500
    ));
  }

  Text prodetailtext(){
    return Text("Project Details:", style: GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w500
    ));
  }

  Text toolstext(){
    return Text("Tools:", style: GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w500
    ));
  }

  Text linktext(){
    return Text("Project Links:", style: GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w500
    ));
  }


}