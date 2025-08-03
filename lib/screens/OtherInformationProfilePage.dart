import 'package:flutter/material.dart';

class OtherInformationProfilePage extends StatelessWidget {
  const OtherInformationProfilePage({super.key});

  Widget buildOptionRowOtherInfo(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 30),
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
          padding: EdgeInsets.only(left: 13),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "OTHER INFORMATION",
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
              buildOptionRowOtherInfo(Icons.share, "Share the app"),
              SizedBox(height: 15),
              buildOptionRowOtherInfo(Icons.info, "About us"),
              SizedBox(height: 15),
              buildOptionRowOtherInfo(Icons.privacy_tip, "Account Privacy"),
              SizedBox(height: 15),
              buildOptionRowOtherInfo(
                Icons.notification_add,
                "Notification preferences",
              ),
              SizedBox(height: 15),
              buildOptionRowOtherInfo(Icons.logout, "Log out"),
            ],
          ),
        ),
      ],
    );
  }
}
