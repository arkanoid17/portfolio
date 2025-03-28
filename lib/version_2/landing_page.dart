import 'package:flutter/material.dart';
import 'package:portfolio/version_2/components/footer.dart';
import 'package:portfolio/version_2/pages/about_me.dart';
import 'package:portfolio/pages/home/home.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/version_2/pages/contact_me.dart';
import 'package:portfolio/version_2/pages/home.dart';
import 'package:portfolio/version_2/pages/projects.dart';
import 'package:portfolio/version_2/pages/skills.dart';

import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/components/toolbar.dart';
import 'package:visibility_detector/visibility_detector.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutMeKey = GlobalKey();
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  int selected = 1;

  void _scrollToTarget(key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  setSelectedToolbar(index) {
    if(selected!=index){
      setState(() {
        selected = index;
      });
    }
  }

  _onToolbarOptionPressed(index) {
    _handleScrollToPage(index);
  }

  _handleScrollToPage(index) {
    if (index == 1) {
      _scrollToTarget(_homeKey);
    }
    if (index == 2) {
      _scrollToTarget(_aboutMeKey);
    }
    if (index == 3) {
      _scrollToTarget(_projectsKey);
    }
    if (index == 4) {
      _scrollToTarget(_skillsKey);
    }
    if (index == 5) {
      _scrollToTarget(_contactKey);
    }
  }
  _onVisibilityChanged(info,index){
    if (info.visibleFraction > 0.5)
    {
      if(index!=selected){
        setSelectedToolbar(index);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        selected: selected,
        onOptionSelected: _onToolbarOptionPressed,
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VisibilityDetector(
                key: _homeKey,
                child: Home(
                  homeKey: _homeKey,
                ),
                onVisibilityChanged: (info) =>_onVisibilityChanged(info, 1)
            ),

            VisibilityDetector(
                key: _aboutMeKey,
                child:AboutMe(
                  aboutMeKey: _aboutMeKey,
                ),
                onVisibilityChanged: (info) =>_onVisibilityChanged(info, 2)
            ),


            VisibilityDetector(
                key: _projectsKey,
                child: Projects(
                  projectsKey: _projectsKey,
                ),
                onVisibilityChanged: (info) =>_onVisibilityChanged(info, 3)
            ),
            VisibilityDetector(
                key: _skillsKey,
                child: Skills(
                  skillsKey: _skillsKey,
                ),
                onVisibilityChanged: (info) =>_onVisibilityChanged(info, 4)
            ),
            VisibilityDetector(
                key: _contactKey,
                child: ContactMe(
                  contactKey: _contactKey,
                ),
                onVisibilityChanged: (info) =>_onVisibilityChanged(info, 5)
            ),

            const Footer(),
          ],
        ),
      ),
    );
  }
}
