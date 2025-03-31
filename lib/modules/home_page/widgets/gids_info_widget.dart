import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GidsInfoWidget extends StatelessWidget {
  final String name;
  final String img;
  final double raiting;
  final int comments;
  final int experience;
  const GidsInfoWidget({
    super.key,
    required this.name,
    required this.img,
    required this.raiting,
    required this.comments,
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 16.w),
              Container(
                width: 122.w,
                height: 122.h,
                child: CircleAvatar(backgroundImage: AssetImage(img)),
              ),
              SizedBox(width: 41.w),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TexstyleHelper.small14w400black),
                    Row(
                      children: [
                        Text("$raiting", style: TexstyleHelper.small16w500),
                        SizedBox(width: 5.w),
                        Icon(Icons.star, color: Colors.amber),
                      ],
                    ),
                    Text(
                      "$comments comments",
                      style: TexstyleHelper.small14w400black,
                    ),
                    Text(
                      "$experience year experience",
                      style: TexstyleHelper.small14w400black,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 14),
            child: Text(
              "Профессиональный гид, который проводит экскурсии по Кыргызстану. Любит свою работу и считает, что это лучшее занятие в мире!",
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
