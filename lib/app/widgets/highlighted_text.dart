import 'package:flutter/material.dart';

import '../utils/dimentions.dart';

class HighlightedText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final double height;
  HighlightedText({
    super.key,
    // this.color = const Color(0xFFccc7c5),
    this.color = const Color(0xFF000000),
    required this.text,
    this.size = 15,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: Dimensions.getHeight(7),
          bottom: Dimensions.getHeight(7),
          left: Dimensions.getWidth(7),
          right: Dimensions.getWidth(7)),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(Dimensions.getWidth(15))),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: size,
          height: height,
        ),
      ),
    );
  }
}
