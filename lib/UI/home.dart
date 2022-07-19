import 'package:flutter/widgets.dart';
import 'package:portfolio/UI/homepage.dart';
import 'package:portfolio/UI/mobile_home.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1000) {
          return const HomePage();
        } else {
          return const HomePage();
          //return const MobileHomePage();
        }
      },
    );
  }
}
