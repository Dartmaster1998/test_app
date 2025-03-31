import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/core/helper/theme_helper.dart';
import 'package:flutter_application_2/modules/contacts/cotacts_page.dart';
import 'package:flutter_application_2/modules/ui_kit/app_button.dart';
import 'package:flutter_application_2/modules/ui_kit/textfield_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUS extends StatelessWidget {
  const ContactUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 430.h,
      decoration: BoxDecoration(color: ThemeHelper.green),
      child: Column(
        children: [
          SizedBox(height: 31.h),
          Text(
            "Необходимо связаться с Вами?",
            style: TexstyleHelper.medium20w600black,
          ),
          Text(
            "Оставьте свои контакты?",
            style: TexstyleHelper.small16w500white,
          ),
          SizedBox(height: 31.h),
          TextFieldWidget(
            width: 350.w,
            height: 40.h,
            name: "Фамилия и Имя",
            isComment: false,
          ),
          SizedBox(height: 15.h),
          TextFieldWidget(
            width: 350.w,
            height: 40.h,
            name: "Номер телефона",
            isComment: false,
          ),
          SizedBox(height: 15.h),
          TextFieldWidget(
            width: 350.w,
            height: 40.h,
            name: "Эл. почта ",
            isComment: false,
          ),
          SizedBox(height: 15.h),
          TextFieldWidget(
            width: 350.w,
            height: 40.h,
            name: "Коментарий:",
            isComment: true,
          ),
          SizedBox(height: 38.h),
          AppButton(
            function: ContactsPage(),
            nameButton: "Оставить заявку",
            colorButton: ThemeHelper.orangge,
            isIcon: false,
            widthButton: 350.w,
            heightButton: 50.h,
            radiusButton: 10.r,
            isBlack: true,
            textStyle: TexstyleHelper.small14w400white,
          ),
        ],
      ),
    );
  }
}
