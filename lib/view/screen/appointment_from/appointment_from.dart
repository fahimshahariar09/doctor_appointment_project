import 'package:doctor_appointment_project/view/common_widget/common_text.dart';
import 'package:doctor_appointment_project/view/screen/appointment_from/widget/appoint_form_card.dart';
import 'package:flutter/material.dart';

class AppointmentFrom extends StatelessWidget {
  const AppointmentFrom({super.key});

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
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Appointment Info",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              CommonText(
                titel: "Appointment Form",
                fSize: 18,
                fWeight: FontWeight.w500,
              ),
              SizedBox(height: 10),
              CommonText(
                titel: "Appointment Successfully Created",
                fSize: 18,
                fWeight: FontWeight.w500,
                fColor: Colors.green,
              ),
              SizedBox(height: 10),
              AppointFormCard(),
              SizedBox(height: 10),
              Text("An appointment copy has also been sent to you vai SMS")
            ],
          ),
        ),
      ),
    );
  }
}
