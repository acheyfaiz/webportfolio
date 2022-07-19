import 'package:flutter/material.dart';

class WorkCustomData extends StatelessWidget {
  final String title;
  final String subTitle;
  final String duration;

  const WorkCustomData(
      {Key? key,
        required this.title,
        required this.subTitle,
        required this.duration})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.black.withOpacity(.8),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          subTitle,
          style: const TextStyle(
            fontSize: 13.0,
            color: Colors.black54,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Text(
          duration,
          style: const TextStyle(
            fontSize: 12.0,
            color: Colors.black45,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
