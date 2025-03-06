import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/side_nav/side_nav.dart';

class HomeMobile extends StatefulWidget {

  final int selected;
  final Function onMenuSelected;
  final Function getSelectedPage;

  const HomeMobile({super.key, required this.selected, required this.onMenuSelected, required this.getSelectedPage});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(),
      drawer: SideNav(selected: widget.selected,onMenuOptionSelected: widget.onMenuSelected,scaffoldKey: _scaffoldKey,),
      body: Expanded(
        child: widget.getSelectedPage(),
      ),
    );
  }
}
