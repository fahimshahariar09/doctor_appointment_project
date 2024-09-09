import 'package:flutter/cupertino.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 5,
        ),
        child: Column(
          children: [
            Text(
                "Horem ipsum dolor sit amet, Consectetur adipiscing elit, Nunc vulputate libero et velit interdum"),
          ],
        ),
      ),
    );
  }
}
