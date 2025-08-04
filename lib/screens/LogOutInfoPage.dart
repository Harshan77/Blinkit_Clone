import 'package:flutter/material.dart';

class LogOutInfoPage extends StatelessWidget {
  const LogOutInfoPage({super.key});

  Widget buildOptionRow(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.only(left: 4, right: 30),
      child: Row(
        children: [
          Icon(icon, size: 25, color: const Color.fromARGB(255, 150, 142, 142)),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 150, 142, 142),
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: const Color.fromARGB(255, 150, 142, 142),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 2),
          child: Text(
            "YOUR INFORMATION",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 10, 9, 9),
            ),
          ),
        ),
        SizedBox(height: 8),
        Container(
          child: Column(
            children: [
              buildOptionRow(Icons.food_bank, "Your Orders"),

              SizedBox(height: 15),
              buildOptionRow(Icons.location_on_outlined, "Address Book"),
            ],
          ),
        ),
      ],
    );
  }
}
