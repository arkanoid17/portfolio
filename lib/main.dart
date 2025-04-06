import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:portfolio/version_2/pages/landing_page/landing_page.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';

import 'firebase_options.dart';

void main() async{
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
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

}


