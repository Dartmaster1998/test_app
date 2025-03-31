import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/core/helper/theme_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoXWidget extends StatelessWidget {
  final Widget checkbox;
  final String checkboxName;
  const CheckBoXWidget({
    super.key,
    required this.checkbox,
    required this.checkboxName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: ThemeHelper.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          checkbox,
          Text(checkboxName, style: TexstyleHelper.small14w400black),
        ],
      ),
    );
  }
}