import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/home/home_desktop.dart';
import 'package:portfolio/pages/home/home_mobile.dart';
import 'package:portfolio/pages/work_experience/work_experience.dart';

import '../../components/side_nav/side_nav.dart';
import '../about_me/about_me.dart';
import 'home_tablet.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  int selected = 1;

  void onMenuSelected(int selected){
    setState(() {
      this.selected = selected;
    });
  }

  Widget getSelectedPage() {
    switch (selected) {
      case 1:
        return AboutMe();
      case 2:
        return WorkExperience();
      case 3:
        return const Center(child: Text("About Me"));
      case 4:
        return const Center(child: Text("Contact"));
      default:
        return const Center(child: Text("Page Not Found"));
    }
  }

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
        builder: (context,constraints) {
          if (constraints.maxWidth < 600) {
            return HomeMobile(
              selected: selected,
              onMenuSelected: onMenuSelected,
              getSelectedPage: getSelectedPage,
            );
          }
          else if (constraints.maxWidth < 1024) {
            return HomeTablet(
              selected: selected,
              onMenuSelected: onMenuSelected,
              getSelectedPage: getSelectedPage,
            );
          }
          else {
            return HomeDesktop(
              selected: selected,
              onMenuSelected: onMenuSelected,
              getSelectedPage: getSelectedPage,
            );
          }
        }
    );


  }
}
