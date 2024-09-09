import 'package:doctor_appointment_project/view/common_widget/common_card.dart';
import 'package:doctor_appointment_project/view/screen/faq/faq_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.blue.shade50,
              title: Image.asset(
                "assets/icon/Medico.png",
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
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "FAQ",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                        return CommonCard(
                          onTap: () {
                            Get.to(const FaqPage());
                          },
                          text: 'How to Bank a Doctor ?',
                        );
                      }),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
