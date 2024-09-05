import 'package:doctor_appointment_project/constants/icon.dart';
import 'package:doctor_appointment_project/view/common_widget/search_text_field.dart';
import 'package:doctor_appointment_project/view/screen/home_page/widget/category_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
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
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildSizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SearchTextField(
                    hText: 'Search Hospital for doctor',
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
                buildSizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/slider/slide.png",
                        width: 216,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "assets/slider/slide.png",
                        width: 216,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        "assets/slider/slide.png",
                        width: 216,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                buildSizedBox(height: 20),
                const Text(
                  "Category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                buildSizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
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
                                  onTap: () {}),
                              CategoryCard(
                                  titel: "Doctor",
                                  imageUrl: AppIcon.doctor,
                                  onTap: () {}),
                              CategoryCard(
                                  titel: "Invertigation",
                                  imageUrl: AppIcon.invertigation,
                                  onTap: () {}),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CategoryCard(
                                  titel: "Doctor Report",
                                  imageUrl: AppIcon.doctorreport,
                                  onTap: () {}),
                              CategoryCard(
                                  titel: "Department",
                                  imageUrl: AppIcon.department,
                                  onTap: () {}),
                              CategoryCard(
                                  titel: "Department",
                                  imageUrl: AppIcon.invite,
                                  onTap: () {}),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CategoryCard(
                                  titel: "FAQ",
                                  imageUrl: AppIcon.faq,
                                  onTap: () {}),
                              CategoryCard(
                                  titel: "Support",
                                  imageUrl: AppIcon.support,
                                  onTap: () {}),
                              CategoryCard(
                                  titel: "Setting",
                                  imageUrl: AppIcon.setting,
                                  onTap: () {}),
                            ],
                          ),
                        ],
                      ),
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
