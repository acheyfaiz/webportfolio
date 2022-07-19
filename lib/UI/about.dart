import 'package:flutter/material.dart';
import '../Widget/custom_text.dart';

class About extends StatelessWidget {

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          // color: const Color(0xff64FFDA).withOpacity(0.6),
          color: Colors.lightBlueAccent[400],
          size: 16,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width - 100,
      child: Row(
        children: [
          //About me
          Container(
            height: size.height * 0.9,
            width: size.width * .5,
            child: Column(
              children: [
                //About me title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "01.",
                      textsize: 20.0,
                      color: Colors.black,
                    ),

                    const SizedBox(width: 12.0),

                    CustomText(
                      text: "About Me",
                      textsize: 26.0,
                      color: Colors.black,
                    ),

                    SizedBox(
                      width: size.width * 0.01,
                    ),

                    Container(
                      width: size.width / 4,
                      height: 1.10,
                      color: Color(0xff303C55),
                    ),
                  ],
                ),

                SizedBox(height: size.height * 0.07),

                //About me desc
                Wrap(
                  children: [
                    CustomText(
                      text:
                      "Hello! I'm Faiz, mobile apps developer who currently living in Bangi, Selangor.\n\nI enjoy creating things that live on the internet, whether that be websites, applications, or anything in between. My goal is to always build products that provide pixel-perfect and performance experiences.\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                    ),
                    CustomText(
                      text:
                      "Currently, I am working in tech company known as Bizapp Ventures Sdn Bhd which provide business application to entrepreneur.\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                    ),
                    CustomText(
                      text:
                      "Here are a few language I've been knowledge recently:\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                    ),
                  ],
                ),

                // list of known language
                SizedBox(
                  height: size.height * 0.15,
                  width: size.width,
                  child: Wrap(
                    children: [
                      SizedBox(
                        width: size.width * 0.20,
                        height: size.height * 0.15,
                        child: Column(
                          children: [
                            technology(context, "Dart"),
                            technology(context, "Flutter"),
                            technology(context, "UI/UX (Adobe Xd)"),
                            technology(context, "Adobe Photoshop"),
                            technology(context, "Adobe Lightroom"),

                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.17,
                        height: size.height * 0.15,
                        child: Column(
                          children: [
                            technology(context, "C++, Java"),
                            technology(context, "HTML & CSS"),
                            technology(context, "Git - Github"),
                            technology(context, "Firebase"),

                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          // Profile Image
          Expanded(
            child: Container(
              height: size.height / 1.5,
              width: size.width / 2 - 100,
              // color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [

                  Positioned(
                    top: size.height * 0.12,
                    left: size.width * 0.120,
                    child: Card(
                      elevation: 3,
                      //color: const Color(0xff61F9D5),
                      color: Colors.blue[50],
                      child: Container(
                        margin: EdgeInsets.all(2),
                        height: size.height / 2,
                        width: size.width / 5.5,
                        color: Colors.transparent,
                      ),
                    ),
                  ),

                  CustomImageAnimation()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomImageAnimation extends StatefulWidget {
  CustomImageAnimation({Key? key}) : super(key: key);

  @override
  _CustomImageAnimationState createState() => _CustomImageAnimationState();
}

class _CustomImageAnimationState extends State<CustomImageAnimation> {
  Color customImageColor = Color(0xff61F9D5).withOpacity(0.1);
  // ignore: unused_field
  int _enterCounter = 0;
  // ignore: unused_field
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      customImageColor = Color(0xff61F9D5).withOpacity(0.1);
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      customImageColor = Colors.transparent;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: Stack(
        children: [
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: Colors.black54,
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage("images/profile-picture.jpg"),
            ),
          ),
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: customImageColor,
          ),
        ],
      ),
    );
  }
}
