import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
             Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios)),
        Text("Comments"),
      ],
    ),),);
  }
}