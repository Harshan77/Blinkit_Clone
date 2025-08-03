import 'package:flutter/material.dart';

class FeedingIndiaProfilePage extends StatelessWidget {
  const FeedingIndiaProfilePage({super.key});

  Widget buildOptionRowFeedingIndia(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 30),
      child: Row(
        children: [
          Icon(icon, size: 25, color: const Color.fromARGB(255, 150, 142, 142),),
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
          padding: EdgeInsets.only(left: 13),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "FEEDING INDIA",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 10, 9, 9),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            children: [
              buildOptionRowFeedingIndia(Icons.fiber_dvr, "Your impact"),
              SizedBox(height: 15),
              buildOptionRowFeedingIndia(
                Icons.receipt_long,
                "Get Feeding India Receipt",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
