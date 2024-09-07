import 'package:flutter/material.dart';

class DepartmentCard extends StatelessWidget {
  const DepartmentCard(
      {super.key,
      required this.imageurl,
      required this.text,
      required this.onTap});

  final String imageurl;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 100,
        width: 75,
        child: Column(
          children: [
            Image.asset(imageurl),
            Text(text),
          ],
        ),
      ),
    );
  }
}
