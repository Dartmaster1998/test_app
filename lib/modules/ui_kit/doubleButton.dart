import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/theme_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Doublebutton extends StatefulWidget {
  const Doublebutton({super.key});

  @override
  State<Doublebutton> createState() => _DoublebuttonState();
}

class _DoublebuttonState extends State<Doublebutton> {
  String _selected = 'Left'; 
  Color _leftTextColor = Colors.white; 
  Color _rightTextColor = Colors.black; 

  void _selectButton(String value) {
    setState(() {
      if (value == 'Left') {
        _selected = 'Left';
        _leftTextColor = Colors.white; 
        _rightTextColor = Colors.black; 
      } else {
        _selected = 'Right';
        _rightTextColor = Colors.white; 
        _leftTextColor = Colors.black; 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 262.0, 
          height: 45.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.transparent,
          ),
          child: Row(
            children: [
              CustomButton(
                text: 'Лучшие Туры',
                isSelected: _selected == 'Left',
                textColor: _leftTextColor,
                onPressed: () => _selectButton('Left'),
                backgroundColor: _selected == 'Left' ? ThemeHelper.green: ThemeHelper.white,
                isLeft: true,
              ),
              CustomButton(
                text: 'Однодневный тур',
                isSelected: _selected == 'Right',
                textColor: _rightTextColor,
                onPressed: () => _selectButton('Right'),
                backgroundColor: _selected == 'Right' ? ThemeHelper.green: ThemeHelper.white,
                isLeft: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final bool isLeft;

  const CustomButton({
    Key? key,
    required this.text,
    required this.isSelected,
    required this.textColor,
    required this.backgroundColor,
    required this.onPressed,
    required this.isLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: isLeft ? Radius.circular(10.0) : Radius.zero,
              bottomLeft: isLeft ? Radius.circular(10.0) : Radius.zero,
              topRight: !isLeft ? Radius.circular(10.0) : Radius.zero,
              bottomRight: !isLeft ? Radius.circular(10.0) : Radius.zero,
            ),
          ),
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 9.19.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
