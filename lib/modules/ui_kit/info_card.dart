import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/helper/texstyle_helper.dart';
import 'package:flutter_application_2/modules/ui_kit/heart_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCard extends StatefulWidget {
  final String imageUrl;
  const ImageCard({super.key, required this.imageUrl});

  @override
  _ImageCardState createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  bool _isFocused = false;

  void _toggleFocus() {
    setState(() {
      _isFocused = !_isFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleFocus,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isFocused = true),
        onExit: (_) => setState(() => _isFocused = false),
        child: Stack(
         
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.imageUrl,
                width: 308.w,
                height: 308.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(bottom: 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 10),
                opacity: _isFocused ? 1.0 : 0.0,
                child: Container(
                  width: 308.w,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  color: Colors.white.withOpacity(0.5),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Забронировать',
                      style: TexstyleHelper.small16w400,
                    ),
                  ),
                ),
              ),
            ),
          Positioned(
            top: 20,
            left: 20,
            child: HeartWidget(isDark: true, size: 23)),
          ],
        ),
      ),
    );
  }
}
