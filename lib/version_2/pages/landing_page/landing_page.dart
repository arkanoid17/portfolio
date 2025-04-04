import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/dimensions.dart';
import 'package:portfolio/version_2/components/footer.dart';
import 'package:portfolio/version_2/components/toolbar/toolbar_mobile.dart';
import 'package:portfolio/version_2/pages/about_me/about_me.dart';
import 'package:portfolio/pages/home/home.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/version_2/pages/contact/contact_me.dart';
import 'package:portfolio/version_2/pages/home/home.dart';
import 'package:portfolio/version_2/pages/projects/projects.dart';
import 'package:portfolio/version_2/pages/skills/skills.dart';

import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/components/toolbar/toolbar.dart';
import 'package:visibility_detector/visibility_detector.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();

  var home = Home();
  var aboutMe = AboutMe();
  var skills = Skills();
  var projects = Projects();
  var contact = ContactMe();


  int selected = 1;

  void _scrollToTarget(key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  setSelectedToolbar(index) {
    if (selected != index) {
      setState(() {
        selected = index;
      });
    }
  }

  _onToolbarOptionPressed(index) {
    _handleScrollToPage(index);
    if(
      MediaQuery.of(context).size.width<AppDimensions.mobile || MediaQuery.of(context).size.width<AppDimensions.tablet
    ){
      Navigator.pop(context);
    }
  }

  _handleScrollToPage(index) {
    if (index == 1) {
      _scrollToTarget(home.homeKey);
    }
    if (index == 2) {
      _scrollToTarget(aboutMe.aboutMeKey);
    }
    if (index == 3) {
      _scrollToTarget(projects.projectsKey);
    }
    if (index == 4) {
      _scrollToTarget(skills.skillsKey);
    }
    if (index == 5) {
      _scrollToTarget(contact.contactKey);
    }
  }

  _onVisibilityChanged(info, index) {
    if (info.visibleFraction > 0.5) {
      if (index != selected) {
        setSelectedToolbar(index);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (ctx, constraints) => Scaffold(
              appBar: _getToolbar(constraints),
              body: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VisibilityDetector(
                        key: GlobalKey(),
                        child: home,
                        onVisibilityChanged: (info) =>
                            _onVisibilityChanged(info, 1)),
                    VisibilityDetector(
                        key: GlobalKey(),
                        child: aboutMe,
                        onVisibilityChanged: (info) =>
                            _onVisibilityChanged(info, 2)),
                    VisibilityDetector(
                        key: GlobalKey(),
                        child: projects,
                        onVisibilityChanged: (info) =>
                            _onVisibilityChanged(info, 3)),
                    VisibilityDetector(
                        key: GlobalKey(),
                        child: skills,
                        onVisibilityChanged: (info) =>
                            _onVisibilityChanged(info, 4)),
                    VisibilityDetector(
                        key: GlobalKey(),
                        child: contact,
                        onVisibilityChanged: (info) =>
                            _onVisibilityChanged(info, 5)),
                    constraints.maxWidth<AppDimensions.mobile||constraints.maxWidth<AppDimensions.tablet?SizedBox():Footer(),
                  ],
                ),
              ),
            )
    );


  }
  _getToolbar(BoxConstraints constraints){
    if(constraints.maxWidth<AppDimensions.mobile){
      return ToolbarMobile(
        selected: selected,
        onOptionSelected: _onToolbarOptionPressed,
      );
    }else if(constraints.maxWidth<AppDimensions.tablet){
      return ToolbarMobile(
        selected: selected,
        onOptionSelected: _onToolbarOptionPressed,
      );
    }else{
    return Toolbar(
      selected: selected,
      onOptionSelected: _onToolbarOptionPressed,
    );
    }
  }
}
