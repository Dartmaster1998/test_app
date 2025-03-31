import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/modules/home_page/widgets/header_widget.dart';
import 'package:flutter_application_2/modules/home_page/widgets/tour_info.dart';
import 'package:flutter_application_2/modules/tours/tours_detail.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToursPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WidgetAppBar(width: 1.sw, height: 50.h),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      Text("Туры", style: TexstyleHelper.medium20w600black),
                      SizedBox(height: 24.h),
                      Text("Все туры"),
                      SizedBox(height: 24.h),
                      Text("Лучшие туры"),
                      SizedBox(height: 24.h),
                      Text("Индивидуальные туры"),
                      SizedBox(height: 24.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder:
                                        (context) => ToursDetail(
                                          img: 'assets/images/tour1.png',
                                          name: "Ара Кол",
                                          date: 'Дата выездов: 19.03, 21.05',
                                          day: '3 дня',
                                          place: "Осталось мест: 5",
                                        ),
                                  ),
                                );
                              },
                              child: TourInfo(
                                name: "Ара Кол",
                                day: '3 дня',
                                date: 'Дата выездов: 19.03, 21.05',
                                img: 'assets/images/tour1.png',
                                place: 'Осталось мест: 5',
                              ),
                            ),
                            SizedBox(height: 24.h),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder:
                                        (context) => ToursDetail(
                                          img: 'assets/images/tour2.png',
                                          name: "Сказочный каньон",
                                          date: 'Дата выездов: 01.03, 25.05',
                                          day: '12 дня',
                                          place: 'Осталось мест: 25',
                                        ),
                                  ),
                                );
                              },
                              child: TourInfo(
                                name: "Сказочный каньон",
                                day: '12 дня',
                                date: 'Дата выездов: 01.03, 25.05',
                                img: 'assets/images/tour2.png',
                                place: 'Осталось мест: 25',
                              ),
                            ),
                            SizedBox(height: 24.h),
                            TourInfo(
                              name: "Сон Кол",
                              day: '5 дня',
                              date: 'Дата выездов: 13.03, 31.05',
                              img: 'assets/images/tour3.png',
                              place: 'Осталось мест: 0',
                            ),
                            TourInfo(
                              name: "Ара Кол",
                              day: '3 дня',
                              date: 'Дата выездов: 19.03, 21.05',
                              img: 'assets/images/tour1.png',
                              place: 'Осталось мест: 5',
                            ),
                            SizedBox(height: 24.h),
                            TourInfo(
                              name: "Ара Кол",
                              day: '1 дня',
                              date: 'Дата выездов: 19.03, 21.05',
                              img: 'assets/images/tour2.png',
                              place: 'Осталось мест: 5',
                            ),
                            SizedBox(height: 24.h),
                            TourInfo(
                              name: "Ара Кол",
                              day: '5 дня',
                              date: 'Дата выездов: 19.03, 21.05',
                              img: 'assets/images/tour3.png',
                              place: 'Осталось мест: 5',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
