import 'package:doctor_appointment_project/view/common_widget/common_rich_text.dart';
import 'package:flutter/material.dart';

class AppointFormCard extends StatelessWidget {
  const AppointFormCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 180,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
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
              CommonRichText(
                name: "Confirmed your Appointment with ",
                nColor: Colors.grey,
                titel: "Assoc. Prof. Dr. Khandker Parvez Ahemed.",
                tWeight: FontWeight.w500,
                tColor: Colors.black,
              ),
              SizedBox(height: 2),
              CommonRichText(
                name: "Sl: 5 Room: 801 (Level-8) Date: 28-08-2024,",
                nColor: Colors.grey,
                titel: "Delta Health Care, Mymensingh Ltd Address: 55/5, Medical Collage Gate,Charpara, Mymensingh",
                tWeight: FontWeight.w500,
                tColor: Colors.black,
              ),
              SizedBox(height: 3),
              Text("http://cmadical.com/appoinmenrt/aavbgfjhs45",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500),)
            ],
          ),
        ),
      ),
    );
  }
}
