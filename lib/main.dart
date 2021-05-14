import 'package:bmify/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  final Color scaffColor = Color(0xFF0A0E21);
  final Color contColor = Color(0xFF1D1E33);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.native,
      transitionDuration: Duration(milliseconds: 300),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: scaffColor,
        primaryColor: contColor,
        appBarTheme: AppBarTheme(
          backgroundColor: scaffColor,
          centerTitle: true,
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
