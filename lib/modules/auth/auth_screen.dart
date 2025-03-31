import 'package:flutter/material.dart';
import 'package:flutter_application_2/modules/auth/registration.dart';
import 'package:flutter_application_2/modules/ui_kit/drawer_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login() {
    if (loginController.text == "aidar" && passwordController.text == "aidar") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DrawerWidget()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Неверный логин или пароль")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Вход",
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.h),
              TextField(
                controller: loginController,
                decoration: InputDecoration(
                  labelText: "Почта или логин *",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12.h),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Пароль *",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12.h),
              TextButton(onPressed: () {}, child: Text("Забыли пароль?")),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegistrationWidget(),
                    ),
                  );
                },
                child: Text("Зарегистрироваться"),
              ),
              SizedBox(height: 16.h),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
                child: Center(
                  child: Text(
                    "Вход",
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
