import 'package:doctor_appointment_project/view/common_widget/search_text_field.dart';
import 'package:doctor_appointment_project/view/screen/investigation/widget/investigation_card.dart';
import 'package:flutter/material.dart';

class Investigation extends StatelessWidget {
  const Investigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text('Investigation',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
              // Row(
              //   children: [
              //    Icon(Icons.arrow_back,size: 25,),
              //    SizedBox(width: 5,),
              //     Text('Investigation',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),)
              //   ],
              // ),
              SizedBox(
                height: 10,
              ),
              SearchTextField(
                  hText: "Search Investigation", icon: Icon(Icons.search)),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return InvestigationCard(
                        onTap: () {}, text: 'Complete Blood Count (CBC');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
