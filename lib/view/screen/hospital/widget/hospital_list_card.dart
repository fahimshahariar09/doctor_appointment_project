import 'package:flutter/material.dart';

class HospitalListCard extends StatelessWidget {
  const HospitalListCard(
      {super.key,
      required this.imageUrl,
      required this.hospitalName,
      required this.category,
      required this.location,
      required this.code,
      required this.onTap});

  final String imageUrl;
  final String hospitalName;
  final String category;
  final String location;
  final String code;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                height: 90,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //border: Border.all(color: Colors.grey),
                ),
                child: Image.asset(imageUrl),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hospitalName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    const Text(
                      "Category: ",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                    Text(
                      category,
                      style: const TextStyle(fontSize: 14),
                    )
                  ],
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.black,
                          size: 18,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          location,
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Code: ",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          code,
                          style: const TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
