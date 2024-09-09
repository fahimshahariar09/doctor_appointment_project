import 'package:doctor_appointment_project/view/common_widget/common_button.dart';
import 'package:doctor_appointment_project/view/common_widget/common_text_field.dart';
import 'package:flutter/material.dart';

class DoctorReport extends StatelessWidget {
  const DoctorReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Doctor Report",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 5),
              CommonTextField(hText: 'Type Your Mobile Number'),
              SizedBox(height: 5),
              CommonButton(buttonName: "Track On",textColor: Colors.white, onTap: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
