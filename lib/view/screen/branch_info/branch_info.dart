import 'package:doctor_appointment_project/constants/icon.dart';
import 'package:doctor_appointment_project/view/screen/branch_info/widget/branch_info_card.dart';
import 'package:doctor_appointment_project/view/screen/branch_info/widget/doctor_list_card.dart';
import 'package:doctor_appointment_project/view/screen/doctor_list/doctor_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BranchInfo extends StatelessWidget {
  const BranchInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text(
                    "Branch Info",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Image.asset(
                        AppIcon.delta,
                        height: 120,
                        width: 120,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on),
                          Text("Mymensingh"),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text("Delta Health Care, Mymensingh Ltd"),
                      SizedBox(height: 10),
                      BranchInfoCard(),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Doctor List",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.account_tree_outlined),
                              SizedBox(width: 3),
                              Text("All"),
                              Icon(Icons.arrow_drop_down),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      DoctorListCard(
                          imageurl: AppIcon.dlist1,
                          name: "Assoc. Prof. Dr. Khandker\nParvez Ahamed",
                          titel:
                              "MBBS, phd(Neurolog) (ITALY),\nMsc(Enocrinology) (UK)",
                          working: "Victoria Healthcare",
                          bmbcNum: "M37103",
                          expreience: "17+ Years",
                          onTap: () {
                            Get.to(DoctorInfo());
                          },
                          text: "Specialties"),
                      SizedBox(height: 10,),
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
                      SizedBox(height: 10,),
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
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
