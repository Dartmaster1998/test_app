import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/core/helper/theme_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: UiButton(
          function: Navigator(),
          nameButton: "see all tours",
          colorButton: ThemeHelper.green,
          isIcon: true,
          widthButton: 220,
          heightButton: 50,
          radiusButton: 10,
          isBlack: false,
          textStyle: TexstyleHelper.small14w400black,
        ),
      ),
    );
  }
}

class UiButton extends StatelessWidget {
  final String nameButton;
  final Color colorButton;
  final bool isIcon;
  final double widthButton;
  final double heightButton;
  final double radiusButton;
  final bool isBlack;
  final TextStyle textStyle;
  final Widget function;

  const UiButton({
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
