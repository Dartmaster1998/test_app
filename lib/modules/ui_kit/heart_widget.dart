import 'package:flutter/material.dart';

class HeartWidget1 extends StatelessWidget {
  const HeartWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: HeartWidget(size: 100, isDark: false)));
  }
}

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
