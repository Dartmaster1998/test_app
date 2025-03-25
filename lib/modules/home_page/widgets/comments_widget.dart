import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommetsWidget extends StatelessWidget {
  final String name;
  const CommetsWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 308.w,
      height: 385.h,
      child: Column(
        children: [
          Text(name, style: TexstyleHelper.medium24w600),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
              Icon(Icons.star, color: Colors.amber),
            ],
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            style: TexstyleHelper.small16w400,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
