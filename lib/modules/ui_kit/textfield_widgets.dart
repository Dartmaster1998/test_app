import 'package:flutter/material.dart';

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
