import 'package:flutter/material.dart';
import 'package:portfolio/version_2/pages/about_me.dart';
import 'package:portfolio/pages/home/home.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/version_2/pages/home.dart';
import 'package:portfolio/version_2/pages/projects.dart';
import 'package:portfolio/version_2/pages/skills.dart';

import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/components/toolbar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(selected: selected,),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Home(),
            AboutMe(),
            Projects(),
            Skills()
          ],
        ),
      ),
    );
  }
}
