import 'package:flutter/material.dart';
import 'package:portfolio/version_2/resources/app_colors.dart';

class AppDecoration {
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
        side: const BorderSide(color: AppColors.colorOne, width: 1),
        // Border color & width
        borderRadius: BorderRadius.circular(16), // Border radius
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
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
      color: AppColors.titleTextColor);

  static const TextStyle smallBlackText = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.titleTextColor);

  static const TextStyle smallMobileBlackText = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: AppColors.titleTextColor);

  static const TextStyle smallSelectedText = TextStyle(
      fontSize: 16, fontWeight: FontWeight.normal, color: AppColors.colorOne);

  static const TextStyle smallWhiteText = TextStyle(
      fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white);

  static const TextStyle smallerWhiteText =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);

  static const gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.colorOne,
      AppColors.colorTwo,
    ], // Define gradient colors
  );

  static const TextStyle smallChipText = TextStyle(
      fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.colorOne);






  static var dateBg = BoxDecoration(
    color: AppColors.dateColorBg,
    borderRadius: BorderRadius.circular(20),
  );

  static var cardDecor = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        blurRadius: 8,
        spreadRadius: 2,
        offset: const Offset(0, 2),
      ),
    ],
  );



  static const semiMediumBlackText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );



  static var cardDecorLight = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade300, width: 1));

  static const gradDecorLeft = BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        bottomLeft: Radius.circular(12),
      ),
      gradient: gradient);

  static const gradDecorTop = BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      gradient: gradient);



  static const TextStyle mobileSmallBlackText = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: AppColors.titleTextColor
  );

  static const TextStyle mobileMediumBlackTextBold = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: AppColors.titleTextColor);

  static const Map<String, TextStyle> nameText = {
    "mobile": TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black
    ),
    "tablet": TextStyle(
        fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black
    ),
    "desktop": TextStyle(
        fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black)
  };



  static const Map<String, TextStyle> smallGreyText = {
    "mobile": TextStyle(
        fontSize: 12, fontWeight: FontWeight.normal, color: AppColors.greyText
    ),
    "tablet": TextStyle(
        fontSize: 16, fontWeight: FontWeight.normal, color: AppColors.greyText
    ),
    "desktop": TextStyle(
        fontSize: 16, fontWeight: FontWeight.normal, color: AppColors.greyText
    )
  };


  static const Map<String, TextStyle> sectionHeaderText = {
    "mobile": TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    "tablet":TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
    "desktop": TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)
  };



  static const Map<String, TextStyle> mediumBlackText = {
    "mobile": TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    "tablet":TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    "desktop": TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    )
  };


  static const Map<String, TextStyle> smallCaptionGreyText = {
    "mobile": TextStyle(
        fontSize: 12, fontWeight: FontWeight.normal, color: AppColors.greyText
    ),
    "tablet":TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.greyText
    ),
    "desktop": TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.greyText
    )
  };

  static var circleWhite = BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.white.withOpacity(0.4)
  );

  static var circleGrey = BoxDecoration(
      borderRadius: BorderRadius.circular(35),
      color: Colors.grey.shade400.withOpacity(0.4)
  );

  static const Map<String, TextStyle> dateTextStyle = {
    "mobile": TextStyle(
      fontSize: 12,
      color: AppColors.dateColor,
      fontWeight: FontWeight.bold,
    ),
    "tablet":TextStyle(
      color: AppColors.dateColor,
      fontWeight: FontWeight.bold,
    ),
    "desktop": TextStyle(
      color: AppColors.dateColor,
      fontWeight: FontWeight.bold,
    )
  };


  static const Map<String, TextStyle> largeColorOneText = {
    "mobile": TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.colorOne
    ),
    "tablet":TextStyle(
        fontSize: 22, fontWeight: FontWeight.w700, color: AppColors.colorOne
    ),
    "desktop": TextStyle(
        fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.colorOne
    )
  };

  static const Map<String, TextStyle> largeColorTwoText = {
    "mobile": TextStyle(
        fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.colorTwo
    ),
    "tablet":TextStyle(
        fontSize: 22, fontWeight: FontWeight.w700, color: AppColors.colorTwo
    ),
    "desktop": TextStyle(
        fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.colorTwo
    )
  };



  static const Map<String, TextStyle> largeWhite = {
    "mobile": TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    "tablet":TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    "desktop": TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)
  };


  static const Map<String, TextStyle> smallerGreyText = {
    "mobile": TextStyle(
        fontSize: 12, fontWeight: FontWeight.normal, color: AppColors.greyText
    ),
    "tablet":TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.greyText
    ),
    "desktop": TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.greyText
    )
  };

  static const largeBlackText = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.black
  );
}
