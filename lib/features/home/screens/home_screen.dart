import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resourses/constans.dart';
import 'package:mini_nft_marketplace_app/core/resourses/routes_managers.dart';
import 'package:mini_nft_marketplace_app/features/home/screens/home_body.dart';
import 'package:mini_nft_marketplace_app/features/home/widgets/custom_bottom_navigation_bar.dart';
import 'package:mini_nft_marketplace_app/features/home/widgets/custom_card_collection.dart';
import 'package:mini_nft_marketplace_app/features/home/widgets/custom_category_home_page.dart';
import 'package:mini_nft_marketplace_app/features/home/widgets/custom_subtitle_home.dart';
import 'package:mini_nft_marketplace_app/features/home/widgets/custom_title_home_page.dart';
import 'package:mini_nft_marketplace_app/features/home/widgets/custom_top_seller.dart';
import 'package:mini_nft_marketplace_app/features/stats/screens/stats_screen.dart';
import 'package:mini_nft_marketplace_app/model/collection_model.dart';
import 'package:mini_nft_marketplace_app/model/top_model.dart';

import '../../../core/resourses/assets_manager.dart';
import '../../../model/category_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int index = 0;
List<Widget> w = [HomeBody(), StatsScreen()];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomButtomNavigationBar(
        onPressed2: () {
          setState(() {
            index = 0;
          });
        },
        onPressed: () {
          setState(() {
            index = 1;
          });
        },
      ),
      appBar: index == 0
          ? AppBar(
              centerTitle: true,
              backgroundColor: Color(0xff211134),
              elevation: 0,
              title: CustomTitleHomePage(
                title: "NFT Marketplace",
              ))
          : AppBar(
              actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 9.0),
                    child: Icon(Icons.more_horiz),
                  )
                ],
              centerTitle: true,
              backgroundColor: Color(0xff211134),
              elevation: 0,
              title: CustomTitleHomePage(
                title: "Stats",
              )),
      backgroundColor: Color(0xff211134),
      body: w[index],
    );
  }
}
