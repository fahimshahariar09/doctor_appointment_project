import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText(
      {super.key,
        required this.titel,
        this.fSize,
        this.fColor,
        this.maxLine,
        this.fWeight,
        this.overflow});


  final String titel;
  final double? fSize;
  final Color? fColor;
  final int? maxLine;
  final FontWeight? fWeight;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      style: TextStyle(
        color: fColor ?? Colors.black,
        fontWeight: fWeight ?? FontWeight.normal,
        fontSize: fSize ?? 15,
        overflow: overflow ?? TextOverflow.ellipsis,
      ),
      maxLines: maxLine ?? 1,
    );
  }
}
