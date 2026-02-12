import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/features/stats/widgets/active_subtitle_stats_page.dart';

class CustomSubtitleStatePage extends StatelessWidget {
  const CustomSubtitleStatePage({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ActiveSubtitlePage(isActive: true),
          ActiveSubtitlePage(isActive: false),
        ],
      ),
    );
  }
}
