import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/core/helper/theme_helper.dart';
import 'package:flutter_application_2/modules/payment/payment.dart';
import 'package:flutter_application_2/modules/ui_kit/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingCalendarWidget extends StatefulWidget {
  @override
  _BookingCalendarWidgetState createState() => _BookingCalendarWidgetState();
}

class _BookingCalendarWidgetState extends State<BookingCalendarWidget> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TableCalendar(
          firstDay: DateTime.utc(2020, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
        ),
        SizedBox(height: 16),
        UiButton(
          nameButton: "Забронировать",
          colorButton: ThemeHelper.green,
          isIcon: false,
          widthButton: 263.w,
          heightButton: 45.h,
          radiusButton: 10.r,
          isBlack: true,
          textStyle: TexstyleHelper.small16w500white,
          function: Payment(),
        ),
      ],
    );
  }
}
