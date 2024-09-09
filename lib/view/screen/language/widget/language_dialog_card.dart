import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageDialogCard extends StatelessWidget {
  const LanguageDialogCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 250,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            const Icon(Icons.question_mark),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Are you sure you want to\nChange this Language?",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text("Please do not close this page"),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(child: Text("No")),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.back(canPop: true);
                    Get.snackbar('message', 'Change Language');
                  },
                  child: Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue),
                    child: const Center(
                        child: Text(
                      "Yes",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
