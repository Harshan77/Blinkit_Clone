import 'package:blinkit_clone/screens/AppearanceProfilePage.dart';
import 'package:blinkit_clone/screens/ProfileEnd.dart';
import 'package:blinkit_clone/screens/YourInformationProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:blinkit_clone/screens/TwoBarsinProfileLogOut.dart';
import 'package:blinkit_clone/screens/LogOutInfoPage.dart';
import 'package:blinkit_clone/screens/LogOutOtherInfo.dart';

class ProfileLogOut extends StatelessWidget {
  const ProfileLogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Divider(color: Colors.grey),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your account",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Login or sign up to view your complete profile"),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 30,
                  children: [
                    TwoBarsinProfileLogOut(icon: Icons.chat, text: "Support"),
                    TwoBarsinProfileLogOut(
                      icon: Icons.payment,
                      text: "Paymnets",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              AppearanceProfilePage(),
              SizedBox(height: 10),
              LogOutInfoPage(),
              SizedBox(height: 10),
              LogOutOtherInfo(),
              SizedBox(height: 10),
              ProfileEnd(),
            ],
          ),
        ),
      ),
    );
  }
}
