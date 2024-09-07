import 'package:doctor_appointment_project/view/screen/branch_info/branch_info.dart';
import 'package:doctor_appointment_project/view/screen/branch_info/widget/branch_info_card.dart';
import 'package:doctor_appointment_project/view/screen/home_screen/home_screen.dart';
import 'package:doctor_appointment_project/view/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BranchInfo(),
    );
  }
}
