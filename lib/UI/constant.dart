import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

import 'home.dart';

class ConstantsWidget {

  /// constant widget for popup case study
  MaterialButton closepopup(context){
    return MaterialButton(
      onPressed: ()=> Navigator.pop(context),
      elevation: 0,
      color: Colors.white,
      hoverColor: Colors.blue[400],
      minWidth: 100,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: const Text("Close", style: TextStyle(
          color: Colors.black)),
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