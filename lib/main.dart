import 'package:flutter/material.dart';
import 'package:portfolio/pages/home/home.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/utils/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.portfolio,
      theme: AppTheme.themeData,
      home: const HomePage(),


    );
  }
}


