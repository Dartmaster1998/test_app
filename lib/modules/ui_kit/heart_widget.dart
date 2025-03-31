import 'package:flutter/material.dart';

class HeartWidget extends StatelessWidget {
  final double size;
  final bool isDark;
  const HeartWidget({super.key, required this.isDark, required this.size});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isDark == false;
      },
      child: Container(
        child:
            isDark
                ? Icon(Icons.favorite_border, color: Colors.black, size: size)
                : Icon(Icons.favorite, color: Colors.red, size: size,),
      ),
    );
  }
}
