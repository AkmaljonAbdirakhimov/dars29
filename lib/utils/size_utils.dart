import 'package:flutter/material.dart';

class SizeUtils {
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 1000;
  }

  static Size screenSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Size(width, height);
  }

  static const Size designSize = Size(414, 812);
}
