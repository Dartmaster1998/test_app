
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final Color color;
  final Function function;
  const AuthButton({
    required this.color,
    super.key, required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
    function;
      },
      child: Text('Войти'),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(vertical: 16),
        textStyle: TextStyle(fontSize: 16),
      ),
    );
  }
}
