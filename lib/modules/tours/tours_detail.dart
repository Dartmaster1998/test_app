import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/modules/home_page/widgets/comments_widget.dart';
import 'package:flutter_application_2/modules/home_page/widgets/header_widget.dart';
import 'package:flutter_application_2/modules/home_page/widgets/tour_info.dart';
import 'package:flutter_application_2/modules/home_page/widgets/uncommon_widget.dart';
import 'package:flutter_application_2/modules/tours/widgets/calendar_widget.dart';
import 'package:flutter_application_2/modules/tours/widgets/tours_info_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToursDetail extends StatelessWidget {
  final String img;
  final String name;
  final String date;
  final String day;
  final String place;
  const ToursDetail({
    super.key,
    required this.img,
    required this.name,
    required this.date,
    required this.day,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16.h),
              WidgetAppBar(width: 350.w, height: 50.h),
              SizedBox(height: 47.h),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: InkWell(
                  onTap: () {
                     Navigator.of(context).pop();
                  },
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Text("Туры", style: TexstyleHelper.medium20w600black),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 47.h),
              Tour_widget(
                name: name,
                day: day,
                date: date,
                img: img,
                place: place,
              ),

              SizedBox(height: 56.h),
              BookingCalendarWidget(),
              SizedBox(height: 56.h),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 56.h),
              ToursInfoWidget(
                img: "lib/assets/images/location.png",
                name: "Точка сбора:",
                subtitle: "Адрес",
              ),
              SizedBox(height: 24.h,),
              ToursInfoWidget(
                img: "lib/assets/images/duration.png",
                name: "Длительность::",
                subtitle: "1 day",
              ),
              SizedBox(height: 24.h,),ToursInfoWidget(
                img: "lib/assets/images/level.png",
                name: "Сложность:",
                subtitle: "Легкий",
              ),
              SizedBox(height: 24.h,),ToursInfoWidget(
                img: "lib/assets/images/cost.png",
                name: "Стоимость:",
                subtitle: "1500",
              ),
              SizedBox(height: 24.h,),ToursInfoWidget(
                img: "lib/assets/images/age.png",
                name: "Допустимый возраст:",
                subtitle: "от 12 лет",
              ),
              SizedBox(height: 24.h,),ToursInfoWidget(
                img: "lib/assets/images/group.png",
                name: "Группа:",
                subtitle: "от 5 человек",
              ),
              SizedBox(height: 56.h,),
                UnCommonWidget(),SizedBox(height: 14.h),
                CommetsWidget(name: "Elina"),
                SizedBox(height: 14.h),
                CommetsWidget(name: "Aidar"),
                SizedBox(height: 14.h),
            
            ],
          ),
        ),
      ),
    );
  }
}
