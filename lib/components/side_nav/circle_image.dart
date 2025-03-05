import 'package:flutter/cupertino.dart';


class CircleImage extends StatelessWidget {
  var image = "";
  var imageWidth = 100.0;
  var imageHeight = 100.0;

  CircleImage(
      {super.key,
      required this.image,
      required this.imageWidth,
      required this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(imageWidth),
        child: Image.asset(image, fit: BoxFit.cover));
  }
}
