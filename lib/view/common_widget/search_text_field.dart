import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.hText,
     this.icon,
  });

  final String hText;
  final Icon? icon;


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
        hintText: hText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Container(
            height: 40,
            width: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: icon ??
                const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}
