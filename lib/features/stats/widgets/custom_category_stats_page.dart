import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCategoryStatsPage extends StatelessWidget {
  const CustomCategoryStatsPage(
      {super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff211134),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey)),
      height: 39,
      width: 147,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.grey),
          SizedBox(
            width: 2,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          Icon(Icons.arrow_drop_down, color: Colors.grey)
        ],
      ),
    );
  }
}
