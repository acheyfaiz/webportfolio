import 'package:flutter/material.dart';

import '../UI/home2.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        largeScreen: Home2(),
        tabScreen: Home2(),
        smallScreen: Home2(),
      ),
    );
  }
}


class Responsive extends StatelessWidget {
  final Widget largeScreen;
  final Widget tabScreen;
  final Widget smallScreen;

  const Responsive({Key? key,
    required this.largeScreen,
    required this.tabScreen,
    required this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 700;
  }

  static bool isTabScreen(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= 700 && MediaQuery.sizeOf(context).width < 1100;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= 1100;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return largeScreen;
        }
        else if(constraints.maxWidth >= 850 && constraints.maxWidth < 1100){
          return smallScreen;
        }
        else {
          return smallScreen;
        }
      },
    );
  }
}

