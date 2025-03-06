import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/utils/colors.dart';

import '../../utils/strings.dart';

class MenuOption extends StatelessWidget {

  final String title;
  final bool selected;
  final Function onMenuOptionSelected;

  const MenuOption({super.key, required this.title, required this.selected, required this.onMenuOptionSelected});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        dense: true,
        visualDensity: const VisualDensity(vertical: -4),
        leading: Icon(_getIcon(),color: selected?Colors.white:Colors.white38,),
        title: Text(title,style: selected?AppTheme.selectedTabTextStyle:AppTheme.unSelectedTabTextStyle,),
        onTap: ()=>{
            if(title==AppStrings.aboutMe){
              onMenuOptionSelected(1),
            },
            if(title==AppStrings.experience){
              onMenuOptionSelected(2),
            },
            if(title==AppStrings.projects){
              onMenuOptionSelected(3),
            },
            if(title==AppStrings.skills){
              onMenuOptionSelected(4),
            },
        },
    );
  }

  IconData? _getIcon() {
    switch(title){
      case AppStrings.aboutMe:
        return Icons.person_2_outlined;
      case AppStrings.experience:
        return CupertinoIcons.briefcase;
      case AppStrings.projects:
        return Icons.folder_outlined;
      case AppStrings.skills:
        return Icons.laptop;
    }
    return null;
  }
}
