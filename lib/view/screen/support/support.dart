import 'package:doctor_appointment_project/constants/icon.dart';
import 'package:doctor_appointment_project/constants/images.dart';
import 'package:doctor_appointment_project/view/screen/support/widget/custom_button.dart';
import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Support",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(AppImages.support, height: 250, width: 250),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'How May we Help you \n Today',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(onPressed: (){}, text: "Share in the Facebook group", imageUrl: AppIcon.facebook,),
                SizedBox(height: 15,),
                CustomButton(onPressed: (){}, text: "Feedback & Suggesition", imageUrl: AppIcon.person,),

                SizedBox(height: 100,),
                Container(
                  height: 110,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25,bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset(AppIcon.messenger),
                            Text("Messenger")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(AppIcon.email),
                            Text("Email")
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(AppIcon.call),
                            Text("Call")
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
