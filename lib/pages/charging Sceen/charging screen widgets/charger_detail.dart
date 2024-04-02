import "package:flutter/material.dart";

class ChargerDetailColumn extends StatelessWidget {
  const ChargerDetailColumn({
    super.key,
    required this.image,
    required this.heading,
    required this.text,
    required this.isBold,
  });

  final String image;
  final String heading;
  final String text;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          scale: 3,
          image,
          color: Colors.yellow,
        ),
        Text(
          heading,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
