import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme/app_theme.dart';
import '../../../utils/dimensions.dart';
import '../../../components/commons/circle_image.dart';

class SocialsCard extends StatelessWidget {

  final String name;
  final String desc;
  final String image;

  const SocialsCard({super.key, required this.name, required this.desc, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: AppDimensions.socialCardWidth, // Fixed width
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(image, width: AppDimensions.defaultIconWidth, height: AppDimensions.defaultIconHeight),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    name,
                    style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.w500, null),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    desc,
                    style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black54),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
