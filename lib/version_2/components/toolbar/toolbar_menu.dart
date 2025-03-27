import 'package:flutter/material.dart';
import 'package:portfolio/version_2/components/toolbar/toolbar_buttons.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';

class ToolbarMenu extends StatelessWidget {
  final int selected;
  final Function onOptionSelected;

  const ToolbarMenu(
      {super.key, required this.selected, required this.onOptionSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        leading: null,
        title:Row(
          children: [
            Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  gradient: AppDecoration.gradient,
                  borderRadius: BorderRadius.circular(30), // Apply rounded corners
                ),
                child: const Center(
                  child: Text("AM",style: AppDecoration.smallerWhiteText,),
                )
            ),
            const SizedBox(width: 10,),
            const Text("Arka",style: AppDecoration.mobileMediumBlackTextBold,),
          ],
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToolbarButton(
                title: "Home",
                selected: selected,
                onPressed: onOptionSelected,
                index: 1
            ),
            const SizedBox(height: 20,),
            ToolbarButton(
                title: "About Me",
                selected: selected,
                onPressed: onOptionSelected,
                index: 2
            ),
            const SizedBox(height: 20,),
            ToolbarButton(
                title: "Projects",
                selected: selected,
                onPressed: onOptionSelected,
                index: 3
            ),
            const SizedBox(height: 20,),
            ToolbarButton(
                title: "Skills",
                selected: selected,
                onPressed: onOptionSelected,
                index: 4
            ),
            const SizedBox(height: 20,),
            ToolbarButton(
                title: "Contact",
                selected: selected,
                onPressed: onOptionSelected,
                index: 5
            ),
          ],
        ),
      ),
    );
  }
}
