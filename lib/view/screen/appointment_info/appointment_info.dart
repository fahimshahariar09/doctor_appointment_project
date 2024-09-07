import 'package:doctor_appointment_project/view/common_widget/common_button.dart';
import 'package:doctor_appointment_project/view/common_widget/common_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                      const SizedBox(height: 5),
                      const Row(
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
                      const SizedBox(height: 15),
                      const CommonRichText(
                          name: "Doctor Name: ",
                          titel: "Assoc. Prof. Dr. Khandker Parvez Ahamed"),
                      const SizedBox(height: 15),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Patient Info",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const CommonRichText(
                          name: "Patient Name*: ", titel: "Amirul Islam Amir"),
                      const SizedBox(height: 10),
                      const CommonRichText(
                          name: "Patient Mobile Number*: ",
                          titel: "01565842524"),
                      const SizedBox(height: 10),
                      const CommonRichText(name: "Type*: ", titel: "New"),
                      const SizedBox(height: 10),
                      const CommonRichText(name: "Gender*: ", titel: "Male"),
                      const SizedBox(height: 10),
                      const Text(
                        "Chamber:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Delta Hospital Mymensingh",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                      const SizedBox(height: 15),
                      const CommonRichText(name: "4:00 PM ", titel: "(Thu-Fri)"),
                      const SizedBox(height: 20),
                      const CommonRichText(
                          name: "Address: ",
                          titel:
                              "55/5, Medical Collage Gate, Charpara, Mymensingh"),
                      const SizedBox(height: 20),
                      const CommonRichText(
                          name: "Contact: ",
                          titel: "+0880185475222, +08801548756921"),
                      const SizedBox(height: 20),
                      const CommonRichText(name: "Doctor Fee: ", titel: "1800 Tk"),
                      const SizedBox(height: 20),
                      CommonButton(
                          buttonName: "Payment For Booking",
                          onTap: () {
                            Get.snackbar("title", "add success");
                          }),
                      const SizedBox(height: 10),
                      CommonButton(
                          buttonName: "Pay Later",
                          buttonColor: Colors.grey,
                          onTap: () {
                            Get.snackbar("title", "add failed");
                          })
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
