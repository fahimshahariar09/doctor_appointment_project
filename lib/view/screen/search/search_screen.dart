import 'package:doctor_appointment_project/constants/icon.dart';
import 'package:doctor_appointment_project/view/common_widget/search_text_field.dart';
import 'package:doctor_appointment_project/view/screen/search/widget/hospital_list_card.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
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
              SizedBox(height: 10),
              SearchTextField(
                hText: "Search Hospital name & Reg Code",
                icon: Icon(
                  Icons.filter_list_alt,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hospital List',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      SizedBox(width: 3),
                      Text("Mymensingh"),
                      SizedBox(width: 2),
                      Icon(Icons.arrow_drop_down)
                    ],
                  )
                ],
              ),
              SizedBox(height: 15),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      HospitalListCard(
                        imageUrl: AppIcon.delta,
                        hospitalName: "Delta Health Care",
                        category: 'Specialzed Hospital',
                        location: 'Mymensingh',
                        code: '10000399',
                        onTap: () {},
                      ),
                      SizedBox(height: 5),
                      HospitalListCard(
                        imageUrl: AppIcon.nexus,
                        hospitalName: "Nexus Hospital",
                        category: 'Specialzed Hospital',
                        location: 'Mymensingh',
                        code: '10000399',
                        onTap: () {},
                      ),
                      SizedBox(height: 5),
                      HospitalListCard(
                        imageUrl: AppIcon.pranto,
                        hospitalName: "Pranto Specialzed Hospital",
                        category: 'Specialzed Hospital',
                        location: 'Mymensingh',
                        code: '10000399',
                        onTap: () {},
                      ),
                      SizedBox(height: 5),
                      HospitalListCard(
                        imageUrl: AppIcon.clinic,
                        hospitalName: "Mymensingh Chest Disease",
                        category: 'Specialzed Hospital',
                        location: 'Mymensingh',
                        code: '10000399',
                        onTap: () {},
                      ),
                      SizedBox(height: 5),
                      HospitalListCard(
                        imageUrl: AppIcon.pranto,
                        hospitalName: "Union Specialzed Hospital",
                        category: 'Specialzed Hospital',
                        location: 'Mymensingh',
                        code: '10000399',
                        onTap: () {},
                      ),
                      SizedBox(height: 5),
                      HospitalListCard(
                        imageUrl: AppIcon.clinic,
                        hospitalName: "Sodesh Hospital",
                        category: 'None',
                        location: 'Mymensingh',
                        code: 'NAN',
                        onTap: () {},
                      ),
                      SizedBox(height: 5),
                      HospitalListCard(
                        imageUrl: AppIcon.clinic,
                        hospitalName: "Sodesh Hospital",
                        category: 'None',
                        location: 'Mymensingh',
                        code: 'NAN',
                        onTap: () {},
                      ),
                      SizedBox(height: 10),
                      Text("No Data More"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
