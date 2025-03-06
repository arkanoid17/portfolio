import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/side_nav/side_nav.dart';

class HomeTablet extends StatefulWidget {

  final int selected;
  final Function onMenuSelected;
  final Function getSelectedPage;

  const HomeTablet({super.key, required this.selected, required this.onMenuSelected, required this.getSelectedPage});

  @override
  State<HomeTablet> createState() => _HomeTabletState();
}

class _HomeTabletState extends State<HomeTablet> {

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
