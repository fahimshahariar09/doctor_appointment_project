import 'package:flutter/material.dart';

class DoctorListCard extends StatelessWidget {
  const DoctorListCard(
      {super.key,
      required this.imageurl,
      required this.name,
      required this.titel,
      required this.working,
      required this.bmbcNum,
      required this.expreience,
      required this.onTap,
      required this.text});

  final String imageurl;
  final String name;
  final String text;
  final String titel;
  final String working;
  final String bmbcNum;
  final String expreience;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: SizedBox(
          height: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(imageurl,fit: BoxFit.cover,),
              ),
              const SizedBox(
                width: 2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    text,
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                    Container(
                      height: 20,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.blue
                      ),
                      child: const Center(child: Text("Neurologist")),
                    ),

                  Text(
                    titel,
                    style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      const Text("Working: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),),
                      Text(
                        working,
                        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("BMDC Num: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),),
                      Text(
                        bmbcNum,
                        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Expreience: ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),),

                      Text(
                        expreience,
                        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                        overflow: TextOverflow.ellipsis,
                      ),
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
