import 'package:flutter/material.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';

class ToolbarButton extends StatelessWidget {

  final String title;
  final int selected;
  final int index;
  final Function onPressed;

  const ToolbarButton({super.key, required this.title, required this.selected, required this.onPressed, required this.index});

  @override
  Widget build(BuildContext context) {

    return  MaterialButton(
        elevation: 0,
        color: selected==index ? Colors.grey.shade100 : Colors.white,
        highlightElevation: 0,
        hoverElevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onPressed: ()=>onPressed(index),
        child: Text(title,style: _getSelectedTextStyle(index))
    );
  }

  TextStyle _getSelectedTextStyle(int option) => selected == option ? AppDecoration.smallSelectedText : AppDecoration.smallBlackText;
}
