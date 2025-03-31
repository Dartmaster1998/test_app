import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/theme_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final bool isLeft;

  const ChooseButton({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.textColor,
    required this.backgroundColor,
    required this.onPressed,
    required this.isLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: isLeft ? Radius.circular(10.0) : Radius.zero,
              bottomLeft: isLeft ? Radius.circular(10.0) : Radius.zero,
              topRight: !isLeft ? Radius.circular(10.0) : Radius.zero,
              bottomRight: !isLeft ? Radius.circular(10.0) : Radius.zero,
            ),
          ),
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 9.19.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
