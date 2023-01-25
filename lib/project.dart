import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
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

          /// project bizapp x
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                width: size.width * .5,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height / 2,
                      color: Colors.black54,
                      child: const Image(
                        image: AssetImage("images/img1.png"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: size.height / 2,
                      color: Colors.black54,
                      child: const Image(
                        image: AssetImage("images/img2.png"),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: size.width * .5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Bizapp X", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20
                    )),

                    const SizedBox(height: 20),

                    Text("BizApp X is a new-look BizApp application, which help you as agent or dropship\n"
                        "to follow HQ/Stokist or monitor your sales", style: TextStyle(
                        fontSize: 17
                    )),

                    const SizedBox(height: 40),

                    MaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      onPressed: (){},
                      height: 70,
                      color: Colors.blue[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("View Study Case", style: TextStyle(
                        fontSize: 16, color: Colors.white
                      )),
                    ),

                  ],
                ),
              )

            ],
          ),

          const SizedBox(height: 50),

          /// project bizappay
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                width: size.width * .5,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height / 2,
                      color: Colors.black54,
                      child: const Image(
                        image: AssetImage("images/img1.png"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: size.height / 2,
                      color: Colors.black54,
                      child: const Image(
                        image: AssetImage("images/img2.png"),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: size.width * .5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Bizappay", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20
                    )),

                    const SizedBox(height: 20),

                    Text("Bizappay provides online payment platform services\n"
                        "for businesses and individuals with a low charge rate", style: TextStyle(
                        fontSize: 17
                    )),

                    const SizedBox(height: 40),

                    MaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      onPressed: (){},
                      height: 70,
                      color: Colors.blue[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("View Study Case", style: TextStyle(
                          fontSize: 16, color: Colors.white
                      )),
                    ),

                  ],
                ),
              )

            ],
          ),

          const SizedBox(height: 50),

          /// project quranly
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                width: size.width * .5,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height / 2,
                      color: Colors.black54,
                      child: const Image(
                        image: AssetImage("images/img1.png"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: size.height / 2,
                      color: Colors.black54,
                      child: const Image(
                        image: AssetImage("images/img2.png"),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: size.width * .5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Quranly", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20
                    )),

                    const SizedBox(height: 20),

                    Text("A habit-building Quran app that brings a habit-centered,\nroutine-driven approach to Quran reading", style: TextStyle(
                        fontSize: 17
                    )),

                    const SizedBox(height: 40),

                    MaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      onPressed: (){},
                      height: 70,
                      color: Colors.blue[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("View Study Case", style: TextStyle(
                          fontSize: 16, color: Colors.white
                      )),
                    ),

                  ],
                ),
              )

            ],
          ),

          const SizedBox(height: 50),

          /// project aware
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                width: size.width * .5,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height / 2,
                      color: Colors.black54,
                      child: const Image(
                        image: AssetImage("images/img1.png"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: size.height / 2,
                      color: Colors.black54,
                      child: const Image(
                        image: AssetImage("images/img2.png"),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: size.width * .5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Aware", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20
                    )),

                    const SizedBox(height: 20),

                    Text("Aware Academy has been helping thousands of Muslims around the world\ncombat porn addiction for the past 17 years", style: TextStyle(
                        fontSize: 17
                    )),

                    const SizedBox(height: 40),

                    MaterialButton(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      onPressed: (){},
                      height: 70,
                      color: Colors.blue[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("View Study Case", style: TextStyle(
                          fontSize: 16, color: Colors.white
                      )),
                    ),

                  ],
                ),
              )

            ],
          ),

          const SizedBox(height: 150),


        ],
      ),
    );
  }
}
