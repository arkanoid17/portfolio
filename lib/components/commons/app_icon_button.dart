import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {

  final IconData? icon;
  final String buttonText;
  final TextStyle buttonTextStyle;
  final ButtonStyle buttonStyle;
  final VoidCallback onPressed;

  const AppIconButton({super.key, required this.onPressed, required this.icon, required this.buttonText, required this.buttonTextStyle, required this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon:  Icon(
        icon, // Document icon
        color: Colors.white, // White color for the icon
        size: 20,
      ),
      label: Text(
        buttonText,
        style: buttonTextStyle,
      ),
      style: buttonStyle,
    );
  }
}
