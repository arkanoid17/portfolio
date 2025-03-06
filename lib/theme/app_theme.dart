import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/colors.dart';

import '../utils/dimensions.dart';

class AppTheme{
  static var themeData = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), // Smooth rounded corners
      ),
    ),
    fontFamily: 'Roboto',
    useMaterial3: true,
  );

  static const nameTextStyle = TextStyle(
    color: Colors.white,
    fontSize: AppDimensions.nameFontSize,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600
  );

  static var ringDecoration = BoxDecoration(
      border: Border.all(
        width: 2,
        color: Colors.white,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(AppDimensions.imageHeight))
  );

  static var whiteCircle = const BoxDecoration(
      color: Colors.white,
      borderRadius:  BorderRadius.all(Radius.circular(AppDimensions.iconHeight))
  );

  static const regularText = TextStyle(
      color: Colors.white,
      fontSize: AppDimensions.smallFont,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400
  );

  static const selectedTabTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: AppDimensions.mediumFont,
    fontWeight: FontWeight.w500,
    color: Colors.white
  );
  static const unSelectedTabTextStyle = TextStyle(
      fontFamily: 'Roboto',
      fontSize: AppDimensions.mediumFont,
      fontWeight: FontWeight.w400,
      color: Colors.white38
  );

  static textStyle(double? fontSize,FontWeight? fontWeight, Color? color)=>TextStyle(
    fontSize: fontSize??AppDimensions.smallFont,
    fontFamily: 'Roboto',
    fontWeight: fontWeight??FontWeight.w400,
    color: color??Colors.black,
    height: -1
  );

 static ButtonStyle greyButton = ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[800], // Dark gray background
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6), // Rounded edges
      )
 );

 static  BoxDecoration greyRoundedDecor = BoxDecoration(
   color: AppColors.blackDivider,
   borderRadius: BorderRadius.circular(8.0)
 );

  static var greyBorder = BoxDecoration(
      border: Border.all(
        width: 0.5,
        color: Colors.black12,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(8))
  );
}