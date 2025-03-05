import 'package:flutter/cupertino.dart';


class CircleImage extends StatelessWidget {
  final image;
  final imageWidth;
  final imageHeight;

  const CircleImage(
      {super.key,
      required this.image,
      required this.imageWidth,
      required this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(imageWidth),
        child: Image.asset(image,width: imageWidth,height: imageHeight,)
    );
  }
}
