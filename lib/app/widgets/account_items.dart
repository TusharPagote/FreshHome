import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'big_text.dart';
import 'small_text.dart';

class AccountItems extends StatelessWidget {
  final Color? color;
  final String title;
  final String subtitle;
  final double size;
  final double height;
  final IconData icon;
  AccountItems({
    super.key,
    // this.color = const Color(0xFFccc7c5),
    this.color = const Color(0xFF757575),
    required this.title,
    this.subtitle = "",
    this.size = 15,
    this.height = 1.2, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: title),
                  SizedBox(
                    height: 5,
                  ),
                  SmallText(
                    text: subtitle,
                    size: 12,
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 17,
          )
        ],
      ),
    );
  }
}
