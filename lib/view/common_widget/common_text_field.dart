import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.hText,
    this.icon,
    this.fColor,
    this.fSize,
    this.fWeight, this.fillColor,
  });

  final String hText;
  final Icon? icon;
  final Color? fColor;
  final double? fSize;
  final FontWeight? fWeight;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: fillColor,
        filled: true,
        hintText: hText,
        hintStyle: TextStyle(
            color: fColor ?? Colors.grey,
            fontSize: fSize ?? 15,
            fontWeight: fWeight ?? FontWeight.normal),
        suffixIcon: icon,
      ),
    );
  }
}
