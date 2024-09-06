import 'package:doctor_appointment_project/view/common_widget/search_text_field.dart';
import 'package:flutter/material.dart';

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
            SizedBox(
              height: 10,
            ),
            SearchTextField(
              hText: "Search Doctor Name & BMCD Number",
              icon: Icon(
                Icons.filter_list_alt,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Doctor List",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
