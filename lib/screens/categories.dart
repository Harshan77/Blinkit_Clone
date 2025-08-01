import 'package:flutter/material.dart';

class CategoryNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryNavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon,color: isSelected? Colors.black:Colors.white,size: 30,),
        Text(label,
        style: TextStyle(
          color: isSelected? Colors.black:Colors.white,fontWeight: FontWeight.bold,
        ),),
        const SizedBox(height: 2,),
        if(isSelected)
        Container(
          height: 2,
          width: 30,
          color: Colors.white,
        )
      ],
    ),
    );
  }
}
