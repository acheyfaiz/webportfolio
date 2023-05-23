import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/UI/work_exp.dart';
import 'package:timelines/timelines.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TimelineExp> explist = [

      TimelineExp(title: "Universiti Teknologi Mara (UiTM)", desc: "Bachelor of Computer Science (Hons)", time: "2016 - 2020"),
      TimelineExp(title: "Negeri Sembilan Matriculation College (KMNS)", desc: "Science Module II", time: "2015 - 2016"),
      TimelineExp(title: "SMK Bandar Baru Bangi", desc: "Sijil Pelajaran Malaysia (SPM)", time: "2010 - 2014"),

    ];
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[100],
      width: size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const SizedBox(height: 130),

          Text("EDUCATION", style: GoogleFonts.poppins(
              fontSize: 30, fontWeight: FontWeight.w700
          )),

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
                    indicator: const DotIndicator(color: Colors.blue, size: 15),
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
