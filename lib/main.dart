import 'package:doctor_appointment_project/view/screen/doctor_report/doctor_report.dart';
import 'package:doctor_appointment_project/view/screen/language/language.dart';
import 'package:doctor_appointment_project/view/screen/setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
        home: Setting(),
    );
  }
}
