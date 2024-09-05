import 'package:doctor_appointment_project/view/common_widget/common_button.dart';
import 'package:doctor_appointment_project/view/screen/splash/language_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashStartedScreen extends StatelessWidget {
  const SplashStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  height: 375,
                  width: 356,
                  child: SizedBox(
                      height: 304,
                      width: 318,
                      child: Image.asset("assets/images/doctor.png")),
                ),
                const SizedBox(
                  height: 100,
                ),
                CommonButton(
                    buttonName: "GET STARTED",
                    onTap: () {
                      Get.to(const LanguageSplashScreen());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
