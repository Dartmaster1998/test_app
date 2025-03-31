import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/theme_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String nameButton;
  final Color colorButton;
  final bool isIcon;
  final double widthButton;
  final double heightButton;
  final double radiusButton;
  final bool isBlack;
  final TextStyle textStyle;
  final Widget function;

  const AppButton({
    super.key,
    required this.nameButton,
    required this.colorButton,
    required this.isIcon,
    required this.widthButton,
    required this.heightButton,
    required this.radiusButton,
    required this.isBlack,
    required this.textStyle,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => function));
      },
      child: Container(
        width: widthButton.w,
        height: heightButton.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radiusButton.r),
          color: colorButton,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nameButton, style: textStyle),
            isIcon
                ? Icon(Icons.navigate_next, color: ThemeHelper.white)
                : Text(""),
          ],
        ),
      ),
    );
  }
}
