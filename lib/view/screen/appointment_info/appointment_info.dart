import 'package:doctor_appointment_project/view/common_widget/common_rich_text.dart';
import 'package:flutter/material.dart';

class AppointmentInfo extends StatelessWidget {
  const AppointmentInfo({super.key});

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
            // SizedBox(height: 5),
            // Row(
            //   children: [
            //     Icon(Icons.arrow_back),
            //     SizedBox(width: 5),
            //     Text(
            //       "Appointment Info",
            //       style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
            //     ),
            //   ],
            // ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.arrow_back),
                          SizedBox(width: 5),
                          Text(
                            "Appointment Info",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      CommonRichText(
                          name: "Doctor Name: ",
                          titel: "Assoc. Prof. Dr. Khandker Parvez Ahamed"),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Patient Info",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      CommonRichText(
                          name: "Patient Name*: ",
                          titel: "Amirul Islam Amir"),
                      SizedBox(height: 10),
                      CommonRichText(
                          name: "Patient Mobile Number*: ",
                          titel: "01565842524"),
                      SizedBox(height: 10),
                      CommonRichText(
                          name: "Type*: ",
                          titel: "New"),
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
