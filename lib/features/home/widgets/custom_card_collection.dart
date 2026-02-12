import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resourses/assets_manager.dart';
import '../../../model/collection_model.dart';

class CustomCardCollection extends StatelessWidget {
  const CustomCardCollection({super.key, required this.collectionModel});
  final CollectionModel collectionModel;

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
              height: 191,
              width: 160,
              color: Colors.white.withOpacity(0.1),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(collectionModel.image),
                      height: 139,
                      width: 139,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          collectionModel.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(children: [
                          collectionModel.isActiveLike
                              ? Icon(
                                  CupertinoIcons.heart_fill,
                                  color: Colors.red,
                                )
                              : Icon(
                                  CupertinoIcons.heart,
                                  color: Colors.white,
                                ),
                          Text(
                            collectionModel.countLike.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ])
                      ])
                ],
              ),
            )),
      ),
    );
  }
}
