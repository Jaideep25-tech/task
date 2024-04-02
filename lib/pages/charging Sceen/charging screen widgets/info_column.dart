import "package:flutter/material.dart";

class InfoColumn extends StatelessWidget {
  const InfoColumn({
    super.key,
    required this.text,
    required this.color,
    required this.isTime,
  });

  final String text;
  final Color color;
  final bool isTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 5,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color,
              ),
            ),
            Text(
              isTime ? "TIME" : "ENERGY",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 8,
              ),
            ),
            Text(
              isTime ? "REMAINING" : "CONSUMED",
              style: const TextStyle(fontSize: 8, color: Colors.white),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            text,
            style: TextStyle(
                color: color, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
