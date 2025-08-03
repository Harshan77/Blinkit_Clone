import 'package:flutter/material.dart';

class ProfileEnd extends StatelessWidget {
  const ProfileEnd({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40, bottom: 40),
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "blinkit",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 16, 14, 14),
                ),
              ),
              Text(
                "V17.35.0",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 16, 14, 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
