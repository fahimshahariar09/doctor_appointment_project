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
                  SizedBox(height: 5),

                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
