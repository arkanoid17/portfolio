import 'package:flutter/material.dart';
import 'package:portfolio/version_2/resources/app_colors.dart';

class AppDecoration{
  static var themeData = ThemeData(
    scaffoldBackgroundColor: AppColors.bgColor,
    colorScheme: const ColorScheme.light(
      primary: Colors.white,
    ),
    fontFamily: 'Roboto',
    useMaterial3: true,
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.colorOneLight,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.colorOne, width: 1), // Border color & width
        borderRadius: BorderRadius.circular(16), // Border radius
      ),
    ),
    outlinedButtonTheme:  OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Adjust for roundness
          ),
          side: const BorderSide(color: Colors.grey), // Border color

        ),
    ),
  );

  static const TextStyle toolbarText = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.titleTextColor
  );

  static const TextStyle smallBlackText = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.titleTextColor
  );

  static const TextStyle smallSelectedText = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.colorOne
  );

  static const TextStyle smallWhiteText = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.white
  );

  static const gradient =  LinearGradient(
    colors: [AppColors.colorOne,AppColors.colorTwo,], // Define gradient colors
  );

  static const TextStyle smallChipText = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: AppColors.colorOne
  );

  static const TextStyle nameText = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.black
  );
  static const TextStyle smallGreyText = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.greyText
  );
}