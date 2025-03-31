import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/core/helper/theme_helper.dart';
import 'package:flutter_application_2/modules/home_page/widgets/comments_widget.dart';
import 'package:flutter_application_2/modules/home_page/widgets/contact_us.dart';
import 'package:flutter_application_2/modules/home_page/widgets/gids_info_widget.dart';
import 'package:flutter_application_2/modules/home_page/widgets/header_widget.dart';
import 'package:flutter_application_2/modules/home_page/widgets/tour_info.dart';
import 'package:flutter_application_2/modules/home_page/widgets/uncommon_widget.dart';
import 'package:flutter_application_2/modules/tours/tours_page.dart';
import 'package:flutter_application_2/modules/ui_kit/app_button.dart';
import 'package:flutter_application_2/modules/ui_kit/choose_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<String> _selected = ValueNotifier('Left');

  @override
  void dispose() {
    _selected.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HeaderWidget(),
                SizedBox(height: 24.h),
                SizedBox(
                  width: 262.w,
                  height: 45.h,
                  child: ValueListenableBuilder<String>(
                    valueListenable: _selected,
                    builder: (context, selected, child) {
                      return Row(
                        children: [
                          ChooseButton(
                            text: 'Лучшие Туры',
                            isSelected: selected == 'Left',
                            textColor: selected == 'Left' ? Colors.white : Colors.black,
                            onPressed: () => _selected.value = 'Left',
                            backgroundColor: selected == 'Left' ? ThemeHelper.green : ThemeHelper.white,
                            isLeft: true,
                          ),
                          ChooseButton(
                            text: 'Однодневный тур',
                            isSelected: selected == 'Right',
                            textColor: selected == 'Right' ? Colors.white : Colors.black,
                            onPressed: () => _selected.value = 'Right',
                            backgroundColor: selected == 'Right' ? ThemeHelper.green : ThemeHelper.white,
                            isLeft: false,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 24.h),
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
                SizedBox(height: 24.h),
                AppButton(
                  function: ToursPage(),
                  nameButton: "Смотреть все туры",
                  colorButton: ThemeHelper.orangge,
                  isIcon: true,
                  widthButton: 263.w,
                  heightButton: 45.h,
                  radiusButton: 8.62.r,
                  isBlack: true,
                  textStyle: TexstyleHelper.small14w400white,
                ),
                SizedBox(height: 16.h),
                Text("ГИДЫ", style: TexstyleHelper.medium24w600),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GidsInfoWidget(
                        img: "assets/images/tour3.png",
                        name: "Egor",
                        raiting: 5,
                        comments: 23,
                        experience: 21,
                      ),
                      SizedBox(height: 14.h),
                      GidsInfoWidget(
                        img: "assets/images/tour2.png",
                        name: "Asan",
                        raiting: 3,
                        comments: 2,
                        experience: 1,
                      ),
                      SizedBox(height: 14.h),
                      GidsInfoWidget(
                        img: "assets/images/tour1.png",
                        name: "Egor",
                        raiting: 2,
                        comments: 25,
                        experience: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.h),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: UnCommonWidget(),
                ),
                SizedBox(height: 14.h),
                CommetsWidget(name: "Elina"),
                SizedBox(height: 14.h),
                CommetsWidget(name: "Aidar"),
                SizedBox(height: 14.h),
                ContactUS(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
