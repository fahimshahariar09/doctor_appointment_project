import 'package:doctor_appointment_project/view/common_widget/common_button.dart';
import 'package:doctor_appointment_project/view/screen/appointment_info/widget/common_text_field.dart';
import 'package:flutter/material.dart';

class DoctorBookAppoin extends StatelessWidget {
  const DoctorBookAppoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Card(
            child: Container(
              height: 482,
              width: 340,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Book Appointment",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 50,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Center(
                        child: Text("Assoc. Prof. Dr. Khandker Parvez Ahamed",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,),),
                      ),
                    ),
                    SizedBox(height: 8),
                    CommonTextField(hText: "Patient Name*"),
                    SizedBox(height: 5),
                    CommonTextField(hText: "Patient Mobile Number*"),
                    SizedBox(height: 5),
                    CommonTextField(hText: "Type*",icon: Icon(Icons.arrow_drop_down),),
                    SizedBox(height: 5),
                    CommonTextField(hText: "Gender*",icon: Icon(Icons.arrow_drop_down),),
                    SizedBox(height: 5),
                    CommonTextField(hText: "Choose Avaliable Date*",icon: Icon(Icons.arrow_drop_down),),
                    SizedBox(height: 5),
                    CommonButton(buttonName: "Book Appointment", onTap: (){})
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
