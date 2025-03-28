import 'package:flutter/material.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';

class HomeUserImage extends StatelessWidget {

  final BoxConstraints constraints;

  const HomeUserImage({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        "assets/images/me.jpeg",
        width: _getSize,
        height: _getSize,
        fit: BoxFit.cover, // Ensures the image fills the circle
      ),
    );
  }

  double get _getSize  => constraints.maxWidth<AppDimensions.mobile?AppDimensions.mobileProfilePicSize:constraints.maxWidth<AppDimensions.tablet?AppDimensions.tabletProfilePicSize:AppDimensions.desktopProfilePicSize;
}
