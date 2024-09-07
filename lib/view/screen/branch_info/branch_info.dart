import 'package:doctor_appointment_project/constants/icon.dart';
import 'package:doctor_appointment_project/view/screen/branch_info/widget/branch_info_card.dart';
import 'package:flutter/material.dart';

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
                  Text("Branch Info",style: TextStyle(fontWeight: FontWeight.w600,),)
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
                      SizedBox(height:20),
                      Image.asset(AppIcon.delta,height: 120,width: 120,fit: BoxFit.fill,),
                     SizedBox(height:20),
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
                      BranchInfoCard()
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
