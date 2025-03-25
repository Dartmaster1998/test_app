import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToursInfoWidget extends StatelessWidget {
  final String img;
  final String name;
  final String subtitle;
  const ToursInfoWidget({
    super.key,
    required this.img,
    required this.name,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325.w,
      height: 80.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
              ),
            ),
          ),
          SizedBox(width: 16.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TexstyleHelper.medium20w600black),
              SizedBox(height: 15.h),
              Text(subtitle, style: TexstyleHelper.small16w500),
            ],
          ),
        ],
      ),
    );
  }
}
