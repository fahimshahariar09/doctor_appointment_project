import 'package:doctor_appointment_project/view/common_widget/search_text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: Image.asset(
          "assets/icon/Medico.png",
          height: 32,
          width: 114,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_rounded,
                size: 30,
              )),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildSizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SearchTextField(),
                ),
                buildSizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/slider/slide.png",
                        width: 216,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 5,),
                      Image.asset(
                        "assets/slider/slide.png",
                        width: 216,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 5,),
                      Image.asset(
                        "assets/slider/slide.png",
                        width: 216,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                buildSizedBox(height: 20),
                const Text(
                  "Category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                buildSizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 338,
                    width: 320,
                    decoration: const BoxDecoration(color: Color(0xffD4D4D4)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/hospital.png",
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    buildSizedBox(height: 5),
                                    const Text("Hospital")
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/doctor.png",
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    buildSizedBox(height: 5),
                                    const Text("Doctor")
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/invertigation.png",
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    buildSizedBox(height: 5),
                                    const Text("Invertigation")
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/doctor_report.png",
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    buildSizedBox(height: 5),
                                    const Text("Doctor Report")
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/department.png",
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    buildSizedBox(height: 5),
                                    const Text("Department"),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/invite.png",
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    buildSizedBox(height: 5),
                                    const Text("Invite")
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/faq.png",
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    buildSizedBox(height: 5),
                                    const Text("FAQ"),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/support.png",
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    buildSizedBox(height: 5),
                                    const Text("Support")
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/icon/setting.png",
                                      height: 60,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                    buildSizedBox(height: 5),
                                    const Text("Setting"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )

                // Obx(() => categoryController.isLoading.isTrue
                //     ? Expanded(
                //         child: GridView.builder(
                //             //physics: NeverScrollableScrollPhysics(),
                //             shrinkWrap: true,
                //             itemCount: categoryController.category.length,
                //             gridDelegate:
                //                 SliverGridDelegateWithFixedCrossAxisCount(
                //                     crossAxisCount: 3,
                //                     mainAxisSpacing: 5,
                //                     crossAxisSpacing: 5,
                //                     childAspectRatio: 0.5),
                //             itemBuilder: (context, index) {
                //               return Column(
                //                 children: [
                //                   Image.asset(
                //                       "${categoryController.category[index].image_assets}"),
                //                   CommonText(
                //                       titel:
                //                           "${categoryController.category[index].name}"),
                //                 ],
                //               );
                //             }),
                //       )
                //     : CircularProgressIndicator()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox({double? height, double? width}) => SizedBox(
        height: height,
        width: width,
      );
}
