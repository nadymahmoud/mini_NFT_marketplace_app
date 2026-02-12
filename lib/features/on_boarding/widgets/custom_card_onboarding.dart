import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resourses/size_manager.dart';
import 'package:mini_nft_marketplace_app/core/resourses/string_manager.dart';

class CustomCardOnboarding extends StatelessWidget {
  const CustomCardOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(SizeManager.radius30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.all(12),
          height: 200,
          width: 307,
          color: Colors.white.withOpacity(0.1),
          child: Column(
            children: [
              Text(
                StringManager.titleCardOnboarding,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You can buy and sell the NFTs of the best artists in the world.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17, color: Color(0xffEBEBF599).withOpacity(0.5)),
              ),
              SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(SizeManager.radius30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF5C609B).withOpacity(0.4),
                        borderRadius:
                            BorderRadius.circular(SizeManager.radius30),
                        border: Border.all(color: Colors.white)),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,'home_screen'
                        );
                      },
                      child: Text(
                        "Get started now",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
