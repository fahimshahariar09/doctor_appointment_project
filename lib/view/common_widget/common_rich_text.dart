
import 'package:flutter/material.dart';

class CommonRichText extends StatelessWidget {
  const CommonRichText({super.key, required this.ctext, required this.text});

  final String ctext;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(text: const TextSpan(
      children: [
        TextSpan(
          text: "",style: TextStyle(
          color: Colors.black
        ),
        ),
        TextSpan(
          text: "",style: TextStyle(
            color: Colors.black38
        ),
        ),
      ]
    ));
  }
}
