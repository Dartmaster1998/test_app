import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/modules/ui_kit/info_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TourInfo extends StatelessWidget {
  final String name;
  final String day;
  final String date;
  final String place;
  final String img;
  const TourInfo({
    super.key,
    required this.name,
    required this.day,
    required this.date,
    required this.place,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
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
      width: 308.w,
      height: 420.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageCard(imageUrl: img),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: TexstyleHelper.small16w500),
              Row(
                children: [
                  Text("4", style: TexstyleHelper.small16w500),
                  SizedBox(width: 5.w),
                  Icon(Icons.star, color: Colors.amber),
                ],
              ),
            ],
          ),
          Text(day, style: TexstyleHelper.small16w500),
          Text(date, style: TexstyleHelper.small16w500),
          Text(place, style: TexstyleHelper.small16w500),
        ],
      ),
    );
  }
}
