import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resourses/color_manager.dart';
import 'package:mini_nft_marketplace_app/core/resourses/size_manager.dart';
import 'package:mini_nft_marketplace_app/core/resourses/string_manager.dart';
import 'package:mini_nft_marketplace_app/features/on_boarding/widgets/custom_background_image.dart';
import 'package:mini_nft_marketplace_app/features/on_boarding/widgets/custom_card_onboarding.dart';
import 'package:mini_nft_marketplace_app/features/on_boarding/widgets/custom_title_onboarding_page.dart';

import '../../../core/resourses/assets_manager.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomBackgroundImage(),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: SizeManager.hight70,
                  ),
                  CustomTitleOnboardingPage(),
                  Spacer(),
                  CustomCardOnboarding(),
                  SizedBox(
                    height: SizeManager.hight70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
