import 'package:flutter/material.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/components/gradient_button.dart';
import 'package:portfolio/version_2/components/toolbar/toolbar_buttons.dart';


class Toolbar extends StatelessWidget implements PreferredSizeWidget {

  final int selected;
  final Function onOptionSelected;

  const Toolbar({super.key, required this.selected, required this.onOptionSelected});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Row(
          children: [
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  gradient: AppDecoration.gradient,
                  borderRadius: BorderRadius.circular(40), // Apply rounded corners
                ),
                child: const Center(
                  child: Text("AM",style: AppDecoration.smallWhiteText,),
                )
            ),
            const SizedBox(width: 10,),
            const Text("Arka",style: AppDecoration.toolbarText,),
            const Spacer(),
            ToolbarButton(title: "Home", selected: selected, onPressed: onOptionSelected, index: 1),
            const SizedBox(width: 10,),
            ToolbarButton(title: "About Me", selected: selected, onPressed: onOptionSelected, index: 2),
            const SizedBox(width: 10,),
            ToolbarButton(title: "Projects", selected: selected, onPressed: onOptionSelected, index: 3),
            const SizedBox(width: 10,),
            ToolbarButton(title: "Skills", selected: selected, onPressed: onOptionSelected, index: 4),
            const Spacer(),
            GradientButton(title: "Contact", onPressed: ()=>onOptionSelected(5))
          ],
        ),
      ),
      centerTitle: false,
      elevation: 4,



    );

  }







  @override
  Size get preferredSize => const Size(double.infinity, AppDimensions.toolbarHeight);
}
