import 'package:flutter/material.dart';

class LakmeCards extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  const LakmeCards({
    super.key,
    required this.title,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: 120,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: const Color.fromARGB(171, 90, 4, 34),
        border: Border.all(
          color: const Color.fromARGB(255, 196, 135, 135),
          width: 0.5,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
        boxShadow: [
          BoxShadow(color: const Color.fromARGB(31, 158, 155, 155), blurRadius: 500, offset: Offset(10, 2)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 1),
          Image.asset(imagePath, height: 60, fit: BoxFit.contain),

          SizedBox(height: 1),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
