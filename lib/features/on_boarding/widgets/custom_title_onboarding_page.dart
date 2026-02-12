import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resourses/string_manager.dart';

class CustomTitleOnboardingPage extends StatelessWidget {
  const CustomTitleOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Text(
                    StringManager.onBoardingTitle,
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ) ;
  }
}