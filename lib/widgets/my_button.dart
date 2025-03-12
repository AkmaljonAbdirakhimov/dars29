import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color? textColor;
  final Function()? onTap;
  final double? width;
  final BorderRadius? borderRadius;

  const MyButton({
    required this.title,
    this.backgroundColor,
    this.textColor,
    this.onTap,
    this.width,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primaryColor,
          borderRadius: borderRadius ?? BorderRadius.circular(4),
          border: Border.all(color: backgroundColor ?? AppColors.primaryColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: textColor ?? Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
