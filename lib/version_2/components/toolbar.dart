import 'package:flutter/material.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/components/gradient_button.dart';
import 'package:portfolio/version_2/components/toolbar_buttons.dart';


class Toolbar extends StatelessWidget implements PreferredSizeWidget {

  final int selected;

  const Toolbar({super.key, required this.selected});

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
            ToolbarButton(title: "Home", selected: selected, onPressed: _onButtonPressed, index: 1),
            const SizedBox(width: 10,),
            ToolbarButton(title: "About Me", selected: selected, onPressed: _onButtonPressed, index: 2),
            const SizedBox(width: 10,),
            ToolbarButton(title: "Education", selected: selected, onPressed: _onButtonPressed, index: 3),
            const SizedBox(width: 10,),
            ToolbarButton(title: "Projects", selected: selected, onPressed: _onButtonPressed, index: 4),
            const SizedBox(width: 10,),
            ToolbarButton(title: "Skills", selected: selected, onPressed: _onButtonPressed, index: 5),
            const Spacer(),
            GradientButton(title: "Contact", onPressed: (){})
          ],
        ),
      ),
      centerTitle: false,
      elevation: 4,



    );

  }
  _onButtonPressed(index){

  }






  @override
  Size get preferredSize => const Size(double.infinity, AppDimensions.toolbarHeight);
}
