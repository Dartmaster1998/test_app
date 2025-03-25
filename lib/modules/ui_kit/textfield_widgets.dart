import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/core/helper/theme_helper.dart';
import 'package:flutter_application_2/modules/ui_kit/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextfieldWidgets extends StatelessWidget {
  const TextfieldWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldWidget(
              isComment: false,
              width: 350.w,
              height: 50.h,
              name: "Фамилия и Имя",
            ),
            SizedBox(height: 10),
            TextFieldWidget(
              width: 350.w,
              isComment: false,
              height: 50.h,
              name: "Номер телефона",
            ),
            SizedBox(height: 10),
            TextFieldWidget(
              width: 350.w,
              height: 50.h,
              name: "Эл почта",
              isComment: false,
            ),
            SizedBox(height: 10),
            TextFieldWidget(
              width: 350.w,
              height: 50.h,
              name: "Коменнтарий",
              isComment: true,
            ),
            SizedBox(height: 20.h,),
            UiButton(
              function: WidgetsApp(color:Colors.black) ,
              nameButton: "Оставить заявку",
              colorButton: ThemeHelper.orangge,
              isIcon: false,
              widthButton: 350.w,
              heightButton: 50.h,
              radiusButton: 10.r,
              isBlack: false,
              textStyle: TexstyleHelper.small14w400white,
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final double width;
  final double height;
  final String name;
  final bool isComment;

  const TextFieldWidget({
    super.key,
    required this.width,
    required this.height,
    required this.name,
    required this.isComment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: name,
          labelStyle: TextStyle(color: Colors.grey[700]),
          border: InputBorder.none,
          suffixIcon:
              isComment
                  ? Text("")
                  : Icon(Icons.star, color: Colors.red, size: 10),
        ),
      ),
    );
  }
}
