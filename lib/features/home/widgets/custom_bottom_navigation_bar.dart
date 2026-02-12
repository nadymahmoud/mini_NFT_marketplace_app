import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resourses/routes_managers.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({super.key, this.onPressed , this.onPressed2 , });
  final VoidCallback? onPressed;
   final VoidCallback? onPressed2;
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Container(
      height: 122,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  color: Colors.white.withOpacity(0.1),
                  height: 98,
                  width: size,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     IconButton(
                        onPressed: onPressed2,
                        icon: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: onPressed,
                        icon: Icon(
                          Icons.stacked_bar_chart,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.7),
                  shape: StarBorder.polygon(sides: 6, pointRounding: 0.4)),
              height: 70,
              width: 70,
              child: Icon(
                CupertinoIcons.plus,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
