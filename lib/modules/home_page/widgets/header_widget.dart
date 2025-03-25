import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/modules/ui_kit/drawe_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 170.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('lib/assets/images/main.png'),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: WidgetAppBar(
        width: 1.sw,
        height: 50.h,
      ),
    );
  }
}

class WidgetAppBar extends StatelessWidget {
  final double width;
  final double height;
  const WidgetAppBar({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("LOGO", style: TexstyleHelper.small14w400black),

              DrawerButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => DrawerPage()));}),
            ],
          ),
        ),
      ],
    );
  }
}
