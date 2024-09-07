import 'package:flutter/material.dart';

class CommonRichText extends StatelessWidget {
  const CommonRichText({
    super.key,
    required this.name,
    required this.titel,
    this.nColor,
    this.nWeight,
    this.tColor,
    this.tWeight,
  });

  final String name;
  final String titel;
  final Color? nColor;
  final FontWeight? nWeight;
  final Color? tColor;
  final FontWeight? tWeight;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: name,
          style: TextStyle(
              color: nColor ?? Colors.black,
              fontWeight: nWeight ?? FontWeight.w500,fontSize: 15,)),
      TextSpan(
          text: titel,
          style: TextStyle(
              color: tColor ?? Colors.black54,
              fontWeight: tWeight ?? FontWeight.w400,fontSize: 15))
    ]));
  }
}
