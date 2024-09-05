
import 'package:doctor_appointment_project/view/common_widget/common_button.dart';
import 'package:flutter/material.dart';

class LanguageSplashScreen extends StatelessWidget {
  const LanguageSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  height: 350,
                  width: 350,
                  child: Image.asset("assets/images/doctor1.png"),
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  height: 50,
                  width:326,// MediaQuery.sizeOf(context).width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: const Center(
                    child: Text(
                      "বাংলা",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CommonButton(
                    buttonName: "English",
                    textColor: Colors.white,
                    onTap: () {
                     // Get.to(const HomePage());
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
