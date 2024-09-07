import 'package:doctor_appointment_project/constants/icon.dart';
import 'package:doctor_appointment_project/view/common_widget/search_text_field.dart';
import 'package:doctor_appointment_project/view/screen/category_screen/widget/category_card.dart';
import 'package:doctor_appointment_project/view/screen/doctor_list/doctor_list.dart';
import 'package:doctor_appointment_project/view/screen/doctor_report/doctor_report.dart';
import 'package:doctor_appointment_project/view/screen/faq/faq.dart';
import 'package:doctor_appointment_project/view/screen/hospital/hospital_list.dart';
import 'package:doctor_appointment_project/view/screen/investigation/investigation.dart';
import 'package:doctor_appointment_project/view/screen/support/support.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildSizedBox(height: 10),
                const Row(
                  children: [
                    Text("Let's Fineout\nHospital & Doctor",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ],
                ),
                buildSizedBox(height: 10),
                const SearchTextField(
                  hText: 'Search Hospital for doctor',
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                buildSizedBox(height: 20),
                const Row(
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                buildSizedBox(height: 20),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CategoryCard(
                                titel: "Hospital",
                                imageUrl: AppIcon.hospital,
                                onTap: () {
                                  Get.to(const HospitalList());
                                }),
                            CategoryCard(
                                titel: "Doctor",
                                imageUrl: AppIcon.doctor,
                                onTap: () {
                                  Get.to(const DoctorList());
                                }),
                            CategoryCard(
                                titel: "Invertigation",
                                imageUrl: AppIcon.invertigation,
                                onTap: () {
                                  Get.to(const Investigation());
                                }),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CategoryCard(
                                titel: "Doctor Report",
                                imageUrl: AppIcon.doctorreport,
                                onTap: () {
                                  Get.to(const DoctorReport());
                                }),
                            CategoryCard(
                                titel: "Department",
                                imageUrl: AppIcon.department,
                                onTap: () {}),
                            CategoryCard(
                                titel: "Invite",
                                imageUrl: AppIcon.invite,
                                onTap: () {
                                  // Get.dialog(
                                  //   barrierDismissible: true,
                                  //   Dialog(
                                  //     backgroundColor: Colors.transparent,
                                  //     child: Container(
                                  //       padding: const EdgeInsets.all(10),
                                  //       decoration: BoxDecoration(
                                  //         color: Colors.white,
                                  //         borderRadius: BorderRadius.circular(20),
                                  //       ),
                                  //       child: Padding(
                                  //         padding: const EdgeInsets.symmetric(
                                  //             horizontal: 10, vertical: 8),
                                  //         child: Column(
                                  //           mainAxisSize: MainAxisSize.min,
                                  //           crossAxisAlignment:
                                  //               CrossAxisAlignment.start,
                                  //           children: [
                                  //             const Text(
                                  //               "Send Invitation",
                                  //               style: TextStyle(
                                  //                   fontSize: 25,
                                  //                   fontWeight: FontWeight.w500,
                                  //                   color: Colors.black),
                                  //             ),
                                  //             const SizedBox(
                                  //               height: 2,
                                  //             ),
                                  //             InkWell(
                                  //               onTap: () {
                                  //                 Get.back();
                                  //               },
                                  //               child: const Text(
                                  //                 "Invite By SMS",
                                  //                 style: TextStyle(
                                  //                     fontSize: 15,
                                  //                     fontWeight: FontWeight.w500,
                                  //                     color: Colors.black),
                                  //               ),
                                  //             ),
                                  //             const SizedBox(
                                  //               height: 2,
                                  //             ),
                                  //             InkWell(
                                  //               onTap: () {
                                  //                 Get.back();
                                  //               },
                                  //               child: const Text(
                                  //                 "Share",
                                  //                 style: TextStyle(
                                  //                     fontSize: 15,
                                  //                     fontWeight: FontWeight.w500,
                                  //                     color: Colors.black),
                                  //               ),
                                  //             ),
                                  //           ],
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // );
                                }),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CategoryCard(
                                titel: "FAQ",
                                imageUrl: AppIcon.faq,
                                onTap: () {
                                  Get.to(const Faq());
                                }),
                            CategoryCard(
                                titel: "Support",
                                imageUrl: AppIcon.support,
                                onTap: () {
                                  Get.to(const Support());
                                }),
                            CategoryCard(
                                titel: "Setting",
                                imageUrl: AppIcon.setting,
                                onTap: () {
                                 // Get.to();
                                }),
                          ],
                        ),
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

  SizedBox buildSizedBox({double? height, double? width}) => SizedBox(
        height: height,
        width: width,
      );
}
