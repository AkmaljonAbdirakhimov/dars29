import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  double get screenHeight {
    return MediaQuery.of(this).size.height;
  }
}

// extension SizedBoxX on SizedBox {
//   double
// }

extension NumX on num {
  Widget get h {
    return SizedBox(height: toDouble());
  }
}
