import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.imageUrl});

  final VoidCallback onPressed;
  final String text;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 13,bottom: 13),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imageUrl, height: 50),
              SizedBox(width: 5),
              Text(
                text,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
