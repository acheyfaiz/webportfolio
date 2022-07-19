import 'package:flutter/material.dart';
import 'work_custom_data.dart';

class WorkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [

        WorkCustomData(
          title: "Degree",
          subTitle:
          "I am pursuing Bachelor's Degree in Computer Science \nat Universiti Teknologi Mara (UiTM)",
          duration: "August 2016 - January 2020",
        ),

        WorkCustomData(
          title: "Intern as Mobile Developer at Big Data Sdn Bhd",
          subTitle:
          "Assigned to mockup Parlimen Malaysia Mobile Apps",
          duration: "August 2019 - January 2020",
        ),

        WorkCustomData(
          title: "Mobile Apps Developer at Bizapp Ventures Sdn Bhd",
          subTitle:
          "Assigned to revamp BizApp apps using Flutter framework",
          duration: "March 2020 - Present",
        ),

      ],
    );
  }
}
