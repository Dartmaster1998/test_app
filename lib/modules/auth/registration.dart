import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/modules/auth/auth_screen.dart';
import 'package:flutter_application_2/modules/ui_kit/app_button.dart';
import 'package:flutter_application_2/modules/ui_kit/textfield_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Регистрация',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 55.h),
                TextFieldWidget(
                  width: 350.w,
                  height: 50.h,
                  name: "Номер телефона Telegram*",
                  isComment: false,
                ),
                SizedBox(height: 110.h),
                Row(
                  children: [
                    Expanded(
                      child: TextFieldWidget(
                        width: 222.w,
                        height: 50.h,
                        name: "Код",
                        isComment: true,
                      ),
                    ),
                    SizedBox(width: 10),
                    AppButton(
                      nameButton: "OTP-логин",
                      colorButton: Colors.white,
                      isIcon: false,
                      widthButton: 110.w,
                      heightButton: 50.h,
                      radiusButton: 10.r,
                      isBlack: true,
                      textStyle: TexstyleHelper.small16w500,
                      function: NavigationToolbar(),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                 AppButton(
                        nameButton: "Зарегистрироваться",
                        colorButton: Color(0xff3DD0C9),
                        isIcon: false,
                        widthButton: 340.w,
                        heightButton: 50.h,
                        radiusButton: 10.r,
                        isBlack: true,
                        textStyle: TexstyleHelper.small16w500,
                        function: LoginPage(),
                      ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}
