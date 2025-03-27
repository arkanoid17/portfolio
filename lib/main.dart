import 'package:flutter/material.dart';

import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:portfolio/version_2/pages/landing_page/landing_page.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';

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
      theme: AppDecoration.themeData,
      home: const LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }

  // f9fafb
}


