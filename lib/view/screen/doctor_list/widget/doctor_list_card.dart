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
      child: Card(
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(imageurl),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                ),
                  Card(
                    color: Colors.blue,
                    child: Text("Neurologis"),
                  ),
                Text(
                  titel,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  working,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  bmbcNum,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  expreience,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
