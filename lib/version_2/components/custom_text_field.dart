import 'package:flutter/material.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';

class CustomTextField extends StatefulWidget {

  final String hint;
  final bool enabled;
  final bool readOnly;
  final bool showCursor;
  final TextEditingController controller;
  final Function validator;
  // final Function onChange;
  // final String? errorText;
  final TextInputType? textInputType;
  final int? maxLines;

  const CustomTextField({super.key, required this.hint, required this.enabled, required this.readOnly, required this.showCursor, required this.controller, required this.validator,  this.textInputType, this.maxLines});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxLines ?? 1,
      keyboardType: widget.textInputType ?? TextInputType.none,
      validator: (s)=>widget.validator(s),
      showCursor: widget.showCursor,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      style: AppDecoration.smallBlackText,
      controller: widget.controller,
      decoration: InputDecoration(
        // errorText: widget.errorText,
        hintText: widget.hint,
        hintStyle: AppDecoration.smallGreyText["desktop"],
        border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(12),
         borderSide: BorderSide(
           color: Colors.grey.shade300, // Border color
           width: 1, 
           // Border thickness
         ),
       ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.grey.shade300, // Border color
            width: 1,
            // Border thickness
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.grey.shade300, // Border color
            width: 1,
            // Border thickness
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.red.shade700, // Border color
            width: 1,
            // Border thickness
          ),
        ),
      ),
    );
  }
}
