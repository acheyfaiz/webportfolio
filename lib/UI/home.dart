import 'package:flutter/material.dart';

import '../UI/home2.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        largeScreen: Home2(),
        smallScreen: Home2(),
      ),
    );
  }
}


class Responsive extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;

  const Responsive({Key? key,
    required this.largeScreen,
    required this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 800) {
          return largeScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}

