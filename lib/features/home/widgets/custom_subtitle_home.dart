import 'package:flutter/material.dart';

class CustomSubtitle extends StatelessWidget {
  const CustomSubtitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Text(
           title,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
