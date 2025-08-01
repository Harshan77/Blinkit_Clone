import 'package:flutter/material.dart';

class FestivalOffer extends StatelessWidget {
  final String label;
  final String label2;
  final String imagePath;
  const FestivalOffer({
    super.key,
    required this.label,
    required this.label2,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 167, 146, 105),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              label,
              style: TextStyle(
                color: const Color.fromARGB(255, 62, 12, 9),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              label2,
              style: TextStyle(
                color: const Color.fromARGB(255, 62, 41, 9),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset(imagePath, height: 40, width: 60),
        ],
      ),
    );
  }
}
