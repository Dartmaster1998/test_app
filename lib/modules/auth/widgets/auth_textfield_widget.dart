
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextField extends StatelessWidget {
  final String authHinttext;
  final TextEditingController controller;
  const AuthTextField({
    required this.authHinttext,
    super.key, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFe6dfd8),Color(0xFFe6dfd8) ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
      child: TextField(onChanged: (value) {
        
      },
      controller: controller,
        expands: false,
        style: TextStyle(fontSize: 20.0.r, color: Colors.black54),
        decoration: InputDecoration(
          
          contentPadding: EdgeInsets.all(12.0),
    
          hintText: authHinttext,
          hintStyle: TextStyle(color: Colors.black54),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe6dfd8)),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
