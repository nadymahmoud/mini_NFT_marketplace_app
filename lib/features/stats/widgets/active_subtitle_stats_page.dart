import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActiveSubtitlePage extends StatelessWidget {
  const ActiveSubtitlePage({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                isActive ? Icons.stacked_bar_chart : Icons.stacked_line_chart,
                color: Colors.grey,
              ),
              Text(
                isActive ? "Ranking" : "Activity",
                style: TextStyle(
                    fontSize: 20,
                    color: isActive ? Colors.white : Colors.grey,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          if (isActive)
            Container(
              decoration: BoxDecoration(color: Color(0xff976dff), boxShadow: [
                BoxShadow(
                    color: Color(0xff976dff),
                    offset: Offset(0, -7),
                    blurRadius: 17,
                    spreadRadius: 1),
              ]),
              height: 3.4,
              width: 104,
            )
        ],
      ),
    );
  }
}
