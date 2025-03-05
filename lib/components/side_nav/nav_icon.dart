import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/app_theme.dart';
import '../../utils/dimensions.dart';

class NavIcon extends StatelessWidget {
  final String icon;
  final String type;
  final Function callback;


  const NavIcon({super.key, required this.icon, required this.type,required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.iconWidth,
      height: AppDimensions.iconHeight,
      decoration: AppTheme.whiteCircle,
      child: InkWell(
        onTap: ()=>callback(type),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: SvgPicture.asset(
            icon,
          ),
        ),
      ),
    );
  }
}
