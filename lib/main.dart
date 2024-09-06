
import 'package:doctor_appointment_project/view/screen/bottom_navi_bar/bottom_navi_bar.dart';
import 'package:doctor_appointment_project/view/screen/search/search_screen.dart';
import 'package:doctor_appointment_project/view/screen/support/support.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Support(),
    );
  }
}
