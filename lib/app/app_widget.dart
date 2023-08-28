import 'package:flutter/material.dart';
import 'package:hello_world/app/app_controller.dart';
import 'package:hello_world/login/login_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.deepPurple,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: LoginPage());
      },
    );
  }
}
