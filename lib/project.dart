import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      height: size.height * .8,
      width: size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const SizedBox(height: 40),

          const Text("PROJECTS", style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold
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
          

        ],
      ),
    );
  }
}
