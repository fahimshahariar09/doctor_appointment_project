import 'package:flutter/material.dart';

class BranchInfoCard extends StatelessWidget {
  const BranchInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 135,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(
                        width: 2,
                      ),
                      Text("About US")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.call),
                      Text("Branch Call"),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text("Type: "),
                      Container(
                        height: 25,
                        width: 90,
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
                      Text("Experience: "),
                      Text("8+ year"),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Total Branch: "),
                      Text("4"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Branch No: "),
                      Text("D3"),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
