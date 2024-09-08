import 'package:doctor_appointment_project/constants/icon.dart';
import 'package:doctor_appointment_project/view/common_widget/common_button.dart';
import 'package:flutter/material.dart';

class PaymentGateway extends StatelessWidget {
  const PaymentGateway({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppIcon.delta,
                height: 80,
                width: 80,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Payment Gateway",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              // CommonButton(
              //     buttonName: "Payment ok",
              //     //buttonColor: Colors.grey,
              //     onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
