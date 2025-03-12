import 'package:flutter/material.dart';

import 'size_utils.dart';

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

  Widget get w {
    return SizedBox(width: toDouble());
  }

  double responsiveWidth(BuildContext context) {
    return this *
        SizeUtils.screenSize(context).width /
        SizeUtils.designSize.width;
  }

  double responsiveHeight(BuildContext context) {
    return this *
        SizeUtils.screenSize(context).height /
        SizeUtils.designSize.height;
  }
}
