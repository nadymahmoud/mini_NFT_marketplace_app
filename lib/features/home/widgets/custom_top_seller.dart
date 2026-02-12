import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/model/top_model.dart';

import '../../../core/resourses/assets_manager.dart';

class CustomTopSeller extends StatelessWidget {
  const CustomTopSeller({super.key, required this.tobModel});
  final TopModel tobModel;
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(8),
              height: 240,
              width: 160,
              color: Colors.white.withOpacity(0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(tobModel.image),
                      height: 139,
                      width: 139,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    tobModel.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    tobModel.subtitle,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          Text(
                            tobModel.count1.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Row(children: [
                        Icon(
                          CupertinoIcons.heart,
                          color:
                              tobModel.isActive ? Colors.white : Colors.black,
                        ),
                        Text(
                          tobModel.count2.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ])
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
