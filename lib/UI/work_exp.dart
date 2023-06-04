import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timelines/timelines.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TimelineExp> explist = [

      TimelineExp(title: "Bizapp Ventures Sdn Bhd", desc: "Role: Mobile Apps Developer", time: "Mac 2020 - Present"),
      TimelineExp(title: "Big Data Technology Sdn Bhd", desc: "Role: Programmer (Internship Trainee)", time: "Aug 2019 - Jan 2020"),

    ];
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[50],
      width: size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const SizedBox(height: 130),

          Text("WORK EXPERIENCE", style: GoogleFonts.poppins(
              fontSize: 30, fontWeight: FontWeight.w700
          )),

          Container(
            height: 3, color: Colors.blue[400],
            width: 30, margin: const EdgeInsets.only(top: 30, bottom: 20),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(top: 20),
              shrinkWrap: true,
                itemCount: explist.length,
                itemBuilder: (context, i) => TimelineTile(
                  nodeAlign: TimelineNodeAlign.basic,
                  oppositeContents: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                    child: Text(explist[i].time, style: const TextStyle(
                        fontSize: 15
                    ),),
                  ),

                  contents: ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    title: Text(explist[i].title, style: const TextStyle(
                        color: Colors.black, fontSize: 20
                    )),
                    subtitle: Text(explist[i].desc, style: TextStyle(
                      color: Colors.grey[600], fontSize: 15,
                    )),
                  ),

                  nodePosition: .3,
                  node: TimelineNode(
                    indicator: DotIndicator(color: Colors.red[400], size: 15),
                    startConnector: SolidLineConnector(color: Colors.grey[300], thickness: 2),
                    endConnector: SolidLineConnector(color: Colors.grey[300], thickness: 2),
                  ),
                )
            ),
          ),

          const SizedBox(height: 130)

        ],
      ),
    );
  }
}

class TimelineExp {
  String title;
  String desc;
  String time;

  TimelineExp({required this.title, required this.desc, required this.time});
}
