import 'package:doctor_appointment_project/view/screen/language/widget/language_card.dart';
import 'package:doctor_appointment_project/view/screen/language/widget/language_dialog_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade50,
        title: Image.asset(
          "assets/icon/Medico.png",
          width: 114,
          height: 32,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 30,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Language",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 15),
            LanguageCard(text: "Bangla", onTap: (){
              Get.dialog(
                barrierDismissible: true,
                Dialog(
                  backgroundColor: Colors.white,
                 child: LanguageDialogCard(),
                )
              );
            }),
            const SizedBox(height: 10),
            LanguageCard(text: "English", onTap: (){
              Get.dialog(
                  barrierDismissible: true,
                  Dialog(
                    backgroundColor: Colors.white,
                    child: LanguageDialogCard(),
                  )
              );
            }),
            const SizedBox(height: 10),
            LanguageCard(text: "Hindi", onTap: (){
              Get.dialog(
                  barrierDismissible: true,
                  Dialog(
                    backgroundColor: Colors.white,
                    child: LanguageDialogCard(),
                  )
              );
            }),
          ],
        ),
      ),
    );
  }
}
