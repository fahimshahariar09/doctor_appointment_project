import 'package:doctor_appointment_project/constants/icon.dart';
import 'package:doctor_appointment_project/view/common_widget/search_text_field.dart';
import 'package:doctor_appointment_project/view/screen/doctor_list/doctor_info.dart';
import 'package:doctor_appointment_project/view/screen/doctor_list/widget/doctor_list_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
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
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SearchTextField(
                hText: "Search Doctor Name & BMCD Number",
                icon: Icon(
                  Icons.filter_list_alt,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctor List",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.account_tree_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text("Neurologist"),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      DoctorListCard(
                        imageurl: AppIcon.dlist1,
                        name: "Assoc. Prof. Dr. Khandker\nParvez Ahamed",
                        titel:
                            "MBBS, phd(Neurolog) (ITALY),\nMsc(Enocrinology) (UK)",
                        working: "Victoria Healthcare",
                        bmbcNum: "M37103",
                        expreience: "17+ Years",
                        onTap: () {
                          Get.to(const DoctorInfo());
                        },
                        text: "Specialties",
                      ),
                      const SizedBox(height: 5,),
                      DoctorListCard(
                        imageurl: AppIcon.dlist,
                        name: "Dr Mohammad Harun Ur\nRashid",
                        titel:
                        "MBBS, Ms",
                        working: "Associate Professor & \nHead Neurosurgery",
                        bmbcNum: "M37103",
                        expreience: "17+ Years",
                        onTap: () {},
                        text: "Specialties",
                      ),
                      const SizedBox(height: 5,),
                      DoctorListCard(
                        imageurl: AppIcon.doctor,
                        name: "Dr Jhanara Munni",
                        titel:
                        "MBBS, Ms",
                        working: "Associate Professor & \nHead Neurosurgery",
                        bmbcNum: "M37103",
                        expreience: "17+ Years",
                        onTap: () {},
                        text: "Specialties",
                      ),
                      const SizedBox(height: 10,),
                      const Text("No More Data",style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
