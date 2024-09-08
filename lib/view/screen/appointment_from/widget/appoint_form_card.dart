import 'package:doctor_appointment_project/view/common_widget/common_rich_text.dart';
import 'package:doctor_appointment_project/view/common_widget/common_text.dart';
import 'package:flutter/material.dart';

class AppointFormCard extends StatelessWidget {
  const AppointFormCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonRichText(
                  name: "Dear Sir, ",
                  nColor: Colors.grey,
                  titel: "Amirul Islam Amir",
                  tWeight: FontWeight.w500,
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    CommonRichText(name: "Confirmed your Appointment with ",nColor:Colors.grey , titel: "Assoc. Prof. Dr. Khandker Parvez Ahemed.",tWeight: FontWeight.w500,tColor: Colors.black,),
                  ],
                )
              ],
            ),
        ),

      ),
    );
  }
}
