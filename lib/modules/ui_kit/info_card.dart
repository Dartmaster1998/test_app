import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui_kit/heart_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCard extends StatefulWidget {
  final String imageUrl;
  const ImageCard({super.key, required this.imageUrl});

  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<ImageCard> {
  final ValueNotifier<bool> _isFocused = ValueNotifier(false);

  void _toggleFocus() {
    _isFocused.value = !_isFocused.value;
  }

  @override
  void dispose() {
    _isFocused.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleFocus,
      child: MouseRegion(
        onEnter: (_) => _isFocused.value = true,
        onExit: (_) => _isFocused.value = false,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.imageUrl,
                width: 308.w,
                height: 308.w,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: ValueListenableBuilder<bool>(
                valueListenable: _isFocused,
                builder: (context, isFocused, child) {
                  return AnimatedOpacity(
                    duration: const Duration(milliseconds: 200),
                    opacity: isFocused ? 1.0 : 0.0,
                    child: Container(
                      width: 308,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color: Colors.white.withOpacity(0.5),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Забронировать',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: HeartWidget(isDark: true, size: 23),
            ),
          ],
        ),
      ),
    );
  }
}
