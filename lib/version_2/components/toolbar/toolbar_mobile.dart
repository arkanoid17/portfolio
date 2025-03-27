import 'package:flutter/material.dart';
import 'package:portfolio/version_2/components/toolbar/toolbar_menu.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/utils//app_utils.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/components/gradient_button.dart';
import 'package:portfolio/version_2/components/toolbar/toolbar_buttons.dart';


class ToolbarMobile extends StatelessWidget implements PreferredSizeWidget {

  final int selected;
  final Function onOptionSelected;

  const ToolbarMobile({super.key, required this.selected, required this.onOptionSelected});

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
          ],
        ),
      ),
      actions: [
        IconButton(
            onPressed: ()=>AppUtils.showPopup(
                context,
                ToolbarMenu(
                    selected: selected,
                    onOptionSelected: onOptionSelected
                ),
                false
            ),
            icon: const Icon(Icons.menu)
        )
      ],
      centerTitle: false,
      elevation: 4,



    );

  }

  @override
  Size get preferredSize => const Size(double.infinity, AppDimensions.toolbarHeight);
}
