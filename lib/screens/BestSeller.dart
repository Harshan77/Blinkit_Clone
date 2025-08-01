import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  final String imagePath;
  final String items;
  final String label;
  const BestSeller({super.key, required this.imagePath,required this.items, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Container(
            height: 125,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 239, 239, 239),
            ),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(imagePath, height: 60, width: 60),
                    Container(
                      height: 15,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        
                      ),
                      child: Text(items,style: TextStyle(color: const Color.fromARGB(255, 105, 105, 105),fontSize: 10,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    ),
                    Text(
                      label,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 62, 41, 9),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
