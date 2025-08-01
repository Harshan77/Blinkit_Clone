import 'package:flutter/material.dart';
import 'package:blinkit_clone/screens/Groceries.dart';

class GroceriesList extends StatelessWidget {
  const GroceriesList({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 128, 24, 109),
      width: double.infinity,
     padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Groceries(
              imagePath: "assets/images/blinkit_vegetables.jpg",
              deliverytime: "12 Minutes",
              discount: "10% OFF",
              price: "₹100",
              mrp: "₹150",
            ),
            Groceries(
              imagePath: "assets/images/blinkit_laddo.jpg",
              deliverytime: "12 Minutes",
              discount: "10% OFF",
              price: "₹100",
              mrp: "₹150",
            ),
            Groceries(
              imagePath: "assets/images/blinkit_MakeupKit.png",
              deliverytime: "12 Minutes",
              discount: "10% OFF",
              price: "₹100",
              mrp: "₹150",
            ),
            Groceries(
              imagePath: "assets/images/blinkit_vegetables.jpg",
              deliverytime: "12 Minutes",
              discount: "10% OFF",
              price: "₹100",
              mrp: "₹150",
            ),
            Groceries(
              imagePath: "assets/images/blinkit_vegetables.jpg",
              deliverytime: "12 Minutes",
              discount: "10% OFF",
              price: "₹100",
              mrp: "₹150",
            ),
            Groceries(
              imagePath: "assets/images/blinkit_vegetables.jpg",
              deliverytime: "12 Minutes",
              discount: "10% OFF",
              price: "₹100",
              mrp: "₹150",
            ),
            Groceries(
              imagePath: "assets/images/blinkit_vegetables.jpg",
              deliverytime: "12 Minutes",
              discount: "10% OFF",
              price: "₹100",
              mrp: "₹150",
            ),
          ],
        ),      
      ),
      
      Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(
                  child: Text(
                    "See all products",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: 14, color: Colors.black54),
              ],
            ),
          ),
        ], 
      )
    );
  }
}
