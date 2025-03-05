import 'package:flutter/cupertino.dart';
import 'package:portfolio/utils/colors.dart';

class HeaderIndicator extends StatelessWidget {
  const HeaderIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 5,
      color: AppColors.primary,
    );
  }
}
