import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/utils/dimensions.dart';

class HoverElevatedCard extends StatefulWidget {

  final title;
  final Widget view;
  final Function onClicked;

  const HoverElevatedCard({super.key,required this.title, required this.onClicked, required this.view});

  @override
  _HoverElevatedCardState createState() => _HoverElevatedCardState();
}

class _HoverElevatedCardState extends State<HoverElevatedCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),  // Detect hover enter
      onExit: (_) => setState(() => _isHovered = false),  // Detect hover exit
      child: GestureDetector(
        onTap: ()=>widget.onClicked(widget.title),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100), // Smooth animation
          curve: Curves.easeInOut,
          transform: _isHovered
              ? Matrix4.translationValues(0, -4, 0) // Moves the card slightly up
              : Matrix4.identity(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: _isHovered
                ? [
              const BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 5), // Adds elevation effect
              )
            ]
                : [],
          ),
          child: Card(
            elevation: _isHovered ? 10 : 4, // Changes elevation dynamically
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: widget.view,
          ),
        ),
      ),
    );
  }
}
