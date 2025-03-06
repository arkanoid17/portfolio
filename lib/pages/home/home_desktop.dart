import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/side_nav/side_nav.dart';

class HomeDesktop extends StatelessWidget {

  final int selected;
  final Function onMenuSelected;
  final Function getSelectedPage;

  const HomeDesktop({super.key, required this.selected, required this.onMenuSelected, required this.getSelectedPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNav(selected: selected,onMenuOptionSelected: onMenuSelected,),
          //show component based on selected
          Expanded(
            child: getSelectedPage(),
          ),
        ],
      ),
    );
  }
}
