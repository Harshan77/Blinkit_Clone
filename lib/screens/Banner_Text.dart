import 'package:flutter/material.dart';

class BannerText extends StatelessWidget {
  final String text;
  const BannerText({super.key, required this.text});

  @override
  Widget build(BuildContext context) => Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  );
}
