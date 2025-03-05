import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/side_nav/side_nav.dart';
import 'about_me/about_me.dart';

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
        return const Center(child: Text("Projects"));
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
