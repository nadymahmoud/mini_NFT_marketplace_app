import 'package:flutter/material.dart';

import '../../../core/resourses/assets_manager.dart';

class CustomBackgroundImage extends StatelessWidget {
  const CustomBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      image: AssetImage(AssetsImageManager.onBoardingBackground),
    );
  }
}
