import 'package:flutter/material.dart';
import 'package:blinkit_clone/screens/ThreeBarsInProfile.dart';
import 'package:blinkit_clone/screens/AppearanceProfilePage.dart';
import 'package:blinkit_clone/screens/YourInformationProfilePage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Padding(
        padding: EdgeInsets.only(left: 14),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Your account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.phone, size: 30),
                Text(" Mobile Number", style: TextStyle(fontSize: 20)),
              ],
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 228, 180, 149),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Add your birthday",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Enter details",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Image.asset(
                          'assets/images/blinkit_cake.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ThreeBarsInProfile(icon: Icons.wallet, text: "Blinkit Money"),
                ThreeBarsInProfile(icon: Icons.support_agent, text: "Support"),
                ThreeBarsInProfile(icon: Icons.payment, text: "Payments"),               
              ],
            ),
            ),
            SizedBox(height: 10),
            AppearanceProfilePage(),
            SizedBox(height: 10),
            YourInformationProfilePage(),
          ],
        ),
      ),
    );
  }
}
