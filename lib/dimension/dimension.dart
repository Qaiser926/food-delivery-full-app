
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

// 844/220=3.836
// screenheight/x
  static double pageView230 = screenHeight / 2.78;
  static double pageViewContainer170 = screenHeight / 3.76;
  static double pageViewTextContainer100 = screenHeight / 6.4;

  static double heigth220 = screenHeight / 2.90;
  static double hight30 = screenHeight / 21.33;

  // contaiener left right bottom
  static double left15 = screenHeight / 42.66;
  static double rigth15 = screenHeight / 42.66;
  static double bottom15 = screenHeight / 42.66;
  static double left30 = screenHeight / 21.33;
  static double rigth30 = screenHeight / 21.33;
  static double bottom10 = screenHeight / 64;
  static double left10 = screenHeight / 64;
  static double rigth10 = screenHeight / 64;
  static double top10 = screenHeight / 64;

// text size
  static double smaltextSize14 = screenHeight / 45.71;
  static double smaltextSize20 = screenHeight / 32;

  // height
  static double subContainerheight100 = screenWidth / 3.6;
  static double listViewTextCont70 = screenWidth / 5.14;
  static double containerHeight90 = screenWidth / 7.11;
  static double containerHeight120 = screenWidth / 5.33;
  static double toolbarHeight115 = screenWidth / 5.56;

  // border radius
  static double borderRadius20 = screenHeight / 32;
  static double borderRadius10 = screenHeight / 64;
  static double borderRadius5 = screenHeight / 128;
  // icon size
  static double iconSize12 = screenHeight / 53.33;
  static double iconSize20 = screenHeight / 32;
  // sizebox
  static double sizebox4 = screenHeight / 160;
  static double sizebox15 = screenHeight / 42.66;
  static double sizebox10 = screenHeight / 64;

  // text size
  static double textsize20 = screenHeight / 32;
  static double textsize12 = screenHeight / 53.33;
}
