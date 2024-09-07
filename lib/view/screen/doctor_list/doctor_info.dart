import 'package:doctor_appointment_project/constants/icon.dart';
import 'package:doctor_appointment_project/view/common_widget/common_button.dart';
import 'package:doctor_appointment_project/view/screen/appointment_info/doctor_book_appoin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

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
            const Row(
              children: [
                Icon(Icons.arrow_back),
                SizedBox(width: 5),
                Text(
                  "Doctor Info",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      Image.asset(
                        AppIcon.dlist1,
                        fit: BoxFit.fill,
                        height: 120,
                        width: 120,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Assoc. Prof. Dr. Khandker Parvez Ahamed",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "MBBS, phd(Neurolog) (ITALY),\nMsc(Enocrinology) (UK)",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      CommonButton(
                          buttonName: "Booking Now",
                          textColor: Colors.white,
                          onTap: () {
                            Get.to(DoctorBookAppoin());
                          }),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text("Specialties: "),
                              Container(
                                height: 25,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue,
                                ),
                                child: const Center(child: Text("Neurologist")),
                              )
                            ],
                          ),
                          const Row(
                            children: [
                              Text(
                                "Expreience: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text("17+ Years"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Text(
                            "Working: ",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Victoria Healthcare",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Text(
                            "BMDC Number: ",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "M37103",
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Text("Chamber & Time:",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const ExpansionTile(
                        title: Text(
                          "Victoria Healthcare",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Schedule:",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text("Fri"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("6: 30PM - 8: 50PM"),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text("Sat"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("6: 30PM - 8: 50PM"),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text("Sun"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("6: 30PM - 8: 50PM"),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text("Mon"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("6: 30PM - 8: 50PM"),
                                  ],
                                ),
                                SizedBox(height: 3),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      const ExpansionTile(
                        title: Text(
                          "Delta Health Care, Mymensingh Ltd",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Schedule:",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text("Fri"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("6: 30PM - 8: 50PM"),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text("Sat"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("6: 30PM - 8: 50PM"),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text("Sun"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("6: 30PM - 8: 50PM"),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text("Mon"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("6: 30PM - 8: 50PM"),
                                  ],
                                ),
                                SizedBox(height: 3),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      const ExpansionTile(
                        title: Text(
                          "Labaid Diagnostic Mymensingh",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Schedule:",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text("Fri"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("6: 30PM - 8: 50PM"),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text("Sat"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("6: 30PM - 8: 50PM"),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text("Sun"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("6: 30PM - 8: 50PM"),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Text("Mon"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("6: 30PM - 8: 50PM"),
                                  ],
                                ),
                                SizedBox(height: 3),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Row(
                        children: [
                          Text(
                            "About",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                          "www.drkparvez.com I am woeking in Neurology and diabetes more then 19 years. I have visited all kind of neurological problem like"),
                      const SizedBox(height: 3),
                      const Text(
                          "stroke,headache,vertigo,tinitus,tremor, low back pain,neck pain,facial daviation,hand and feet weakness, numbness,tingiling sensation,all kind of nerve and spine problem, paekinson disesases, epilepsy,momory problem,migraine, sinusitis and diabetes,miltiple joint pain,numbness and tingiling sensation boyh upper and lower limb,PHD, i had traning from Royal infarmary Hospital, Edinburgh, London.post-graduation research fellowship in Rome University, Hospital Italy, and had traning from from Germany, One year postgraduate traning from Dhaka medical Collage and hospital")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
