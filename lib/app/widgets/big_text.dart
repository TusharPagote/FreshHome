import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final double height;
  BigText({
    super.key,
    // this.color = const Color(0xFFccc7c5),
    this.color = const Color(0xFF757575),
    required this.text,
    this.size = 15,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text + ":",
      style: TextStyle(
          color: color,
          fontFamily: 'Roboto',
          fontSize: size,
          height: height,
          fontWeight: FontWeight.bold),
    );
  }
}
