import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimentions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  const AppIcon({
    super.key,
    required this.icon,
    // this.backgroundColor = const Color(0xFFfcf4e4),

    this.backgroundColor = const Color(0xFFE0E0E0),
    this.iconColor = const Color(0xFF756d54),
    this.size = 32.5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          color: backgroundColor),
      child: Icon(
        icon,
        color: iconColor,
        size: Dimensions.getHeight(16),
      ),
    );
  }
}
