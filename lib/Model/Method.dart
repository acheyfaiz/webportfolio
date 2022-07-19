import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Method {

  Color fontcolor = Colors.black;
  String version = "1.0.5";

  launchURL(String link) async {
  var url = link;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

 launchCaller() async {
    const url = "";
    if (await canLaunchUrl(Uri.parse(url))) {
       await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }   
}

  launchEmail() async {
      if (await canLaunchUrl(Uri.parse(""))) {
        await launchUrl(Uri.parse(""));
      } else {
        throw 'Could not launch';
      }
    }

}