import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.titel,
      required this.imageUrl,
      required this.onTap});

  final String titel;
  final String imageUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              imageUrl,
              height: 60,
              width: 60,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            titel,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
