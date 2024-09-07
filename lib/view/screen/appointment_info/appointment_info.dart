import 'package:flutter/material.dart';

class AppointmentInfo extends StatelessWidget {
  const AppointmentInfo({super.key});

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
            SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.arrow_back),
                SizedBox(width: 5),
                Text(
                  "Doctor Info",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Column(
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
