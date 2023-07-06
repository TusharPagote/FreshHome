import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageView = screenHeight / 2.04;
  static double pageViewContainer = screenHeight / 2.90;
  static double pageViewTextContainer = screenHeight / 5.33;

// dynamic height padding and margin
  static double height10 = screenHeight / 64;
  static double height15 = screenHeight / 56.26;
  static double height20 = screenHeight / 32;

// dynamic height padding and margin
  static double width10 = screenHeight / 64;
  static double width15 = screenHeight / 56.26;
  static double width20 = screenHeight / 32;

  static double font20 = screenHeight / 32;
  static double radius20 = screenHeight / 32;
  static double radius30 = screenHeight / 21.33;

  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    double x = getScreenHeight() / pixels; //Screen propoertion
    return getScreenHeight() / x;
  }

  static getWidth(double pixels) {
    double x = getScreenWidth() / pixels; //Screen propoertion
    return getScreenWidth() / x;
  }
}
