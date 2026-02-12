import 'package:flutter/material.dart';

class CustomTitleHomePage extends StatelessWidget {
  const CustomTitleHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),
    );
  }
}
