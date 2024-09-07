import 'package:doctor_appointment_project/constants/depicon.dart';
import 'package:doctor_appointment_project/view/common_widget/common_button.dart';
import 'package:doctor_appointment_project/view/screen/department/widget/department_card.dart';
import 'package:flutter/material.dart';

class Department extends StatelessWidget {
  const Department({super.key});

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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 5,),
                  Text("Department",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
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
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SizedBox(
                          height: 330,
                          width: 320,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  DepartmentCard(imageurl: AppDepicon.asthma, text: "Asthma", onTap: () {  },),
                                  DepartmentCard(imageurl: AppDepicon.medicine, text: "Medicine", onTap: () {  },),
                                  DepartmentCard(imageurl: AppDepicon.surgery, text: "Surgery", onTap: () {  },),
                                  DepartmentCard(imageurl: AppDepicon.pediatric, text: "Pediatric", onTap: () {  },),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  DepartmentCard(imageurl: AppDepicon.dentist, text: "Dentist", onTap: () {  },),
                                  DepartmentCard(imageurl: AppDepicon.surgery, text: "Respiratory", onTap: () {  },),
                                  DepartmentCard(imageurl: AppDepicon.obs, text: "Obs & Gyne", onTap: () {  },),
                                  DepartmentCard(imageurl: AppDepicon.pediatric, text: "Pediatric", onTap: () {  },),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  DepartmentCard(imageurl: AppDepicon.cancer, text: "Cancer", onTap: () {  },),
                                  DepartmentCard(imageurl: AppDepicon.neurologist, text: "Neurologist", onTap: () {  },),
                                  DepartmentCard(imageurl: AppDepicon.orthopedic, text: "Orthopedic", onTap: () {  },),
                                  DepartmentCard(imageurl: AppDepicon.general, text: "Physician", onTap: () {  },),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      CommonButton(buttonName: "More Department",textColor: Colors.white, onTap: (){})
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
