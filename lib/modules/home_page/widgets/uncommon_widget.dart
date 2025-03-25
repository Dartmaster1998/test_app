
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/core/helper/theme_helper.dart';
import 'package:flutter_application_2/modules/comments/comments.dart';
import 'package:flutter_application_2/modules/ui_kit/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnCommonWidget extends StatelessWidget {
  const UnCommonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        width: 1.sw,
        height: 115.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Text("Отзывы", style: TexstyleHelper.medium24w600),
            SizedBox(height: 16.h),
            UiButton(
              function:Comments() ,
              nameButton: "Оставить свой отзыв",
              colorButton: ThemeHelper.orangge,
              isIcon: false,
              widthButton: 263.w,
              heightButton: 45.h,
              radiusButton: 10.r,
              isBlack: true,
              textStyle: TexstyleHelper.small16w500white,
            ),
          ],
        ),
      ),
    );
  }
}
