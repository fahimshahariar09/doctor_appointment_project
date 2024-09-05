
import 'package:doctor_appointment_project/view/screen/home_page/home_page.dart';
import 'package:doctor_appointment_project/view/screen/hospital_screen/hospital_list.dart';
import 'package:doctor_appointment_project/view/screen/investigation/investigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
