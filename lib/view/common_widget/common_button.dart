import 'package:doctor_appointment_project/view/common_widget/common_text.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.buttonName,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonColor,
    this.textColor,
    required this.onTap,
  });

  final String buttonName;
  final double? buttonHeight;
  final double? buttonWidth;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: buttonColor ?? const Color(0xff22A6FE),
        child: SizedBox(
          height: buttonHeight ?? 50,
          width: buttonWidth ?? MediaQuery.sizeOf(context).width,
          child: Center(
            child: CommonText(
              titel: buttonName,
              fColor: textColor ?? Colors.black,
              fSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
