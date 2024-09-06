import 'package:doctor_appointment_project/view/screen/doctor_list/doctor_list.dart';
import 'package:doctor_appointment_project/view/screen/doctor_list/widget/doctor_list_card.dart';
import 'package:doctor_appointment_project/view/screen/support/support.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoctorList(),
    );
  }
}
