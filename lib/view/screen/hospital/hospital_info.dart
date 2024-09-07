import 'package:doctor_appointment_project/constants/icon.dart';
import 'package:doctor_appointment_project/view/common_widget/common_card.dart';
import 'package:flutter/material.dart';

class HospitalInfo extends StatelessWidget {
  const HospitalInfo({super.key});

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
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 5),
                  Text(
                    "Hospital Info",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Image.asset(AppIcon.delta,
                          height: 150, width: 150, fit: BoxFit.cover),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Type: ",
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue,
                                ),
                                child: const Center(
                                    child: Text(
                                  "Specialties",
                                  style: TextStyle(color: Colors.white),
                                )),
                              )
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                "Experience: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "8+ Years: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Text(
                            "Total Branch: ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text("4"),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Text(
                            "Code Number : ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text("M37103"),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          Text(
                            "About",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "stroke,headache,vertigo,tinitus,tremor, low back pain,neck pain,facial daviation,hand and feet weakness, numbness,tingiling sensation,all kind of nerve and spine problem, paekinson disesases, epilepsy,momory problem,migraine, sinusitis and diabetes,miltiple joint pain,numbness and tingiling ensation boyh upper and lower limb,PHD, i had traning from Royal infarmary Hospital, Edinburgh, London.post-graduation research fellowship in Rome University, Hospital Italy, and had traning from Germany, One year postgraduate traning from Dhaka medical Collage and hospital",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Contract 24/7",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text("01755596584"),
                              SizedBox(height: 10),
                              Text("01955588595"),
                              SizedBox(height: 10),
                              Text("deltacarerampura@gmail.com"),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Row(
                        children: [
                          Text(
                            "Branch List",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return CommonCard(
                              onTap: () {},
                              text: "Delta Health Care, Mirpur Ltd",
                              icon: const Icon(
                                Icons.arrow_forward_ios_rounded,
                              ),
                            );
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
