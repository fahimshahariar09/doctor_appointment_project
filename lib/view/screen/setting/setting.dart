import 'package:doctor_appointment_project/view/screen/language/language.dart';
import 'package:doctor_appointment_project/view/screen/setting/widget/common_setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

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
                      "Setting",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          CommonSetting(
                            onTap: () {
                              Get.to(const Language());
                            },
                            text: 'Language',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CommonSetting(
                            onTap: () {
                              Get.dialog(
                                  barrierDismissible: true,
                                  const Dialog(
                                    backgroundColor: Colors.white,
                                    child: SizedBox(
                                      height: 100,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                        child: Column(
                                          children: [
                                            Text(
                                              "About US",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text("Devlop By Classic IT"),
                                            SizedBox(height: 5),
                                            Text("Version: 1(Alpha)"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ));
                            },
                            text: 'About',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
