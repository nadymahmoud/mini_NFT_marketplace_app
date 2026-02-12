import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resourses/assets_manager.dart';

class CustomCategoryHomePage extends StatelessWidget {
  const CustomCategoryHomePage({super.key, required this.title, required this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image(
            fit: BoxFit.cover,
            height: 170,
            width: 240,
            image: AssetImage( image),
          ),
        ),
        Positioned(
          bottom: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color(0xff000000).withOpacity(0),
                        Color(0xff000000).withOpacity(0.4),
                      ])),
                  height: 44,
                  width: 240,
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
