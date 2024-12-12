import 'package:flutter/material.dart';

class FacultyCard extends StatelessWidget {
  const FacultyCard({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffdddddd),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/logo.png",
            width: 100,
          ),
          Text(text),
        ],
      ),
    );
  }
}
