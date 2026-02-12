import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resourses/assets_manager.dart';
import 'package:mini_nft_marketplace_app/features/stats/widgets/custom_category_stats_page.dart';
import 'package:mini_nft_marketplace_app/features/stats/widgets/custom_subtitle_stats_page.dart';
import 'package:mini_nft_marketplace_app/features/stats/widgets/custom_table_row.dart';
import 'package:mini_nft_marketplace_app/model/table_row_model.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomSubtitleStatePage(
            isActive: true,
          ),
          SizedBox(
            height: 27,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomCategoryStatsPage(
                title: "All Categories",
                icon: Icons.reorder_outlined,
              ),
              SizedBox(
                width: 20,
              ),
              CustomCategoryStatsPage(
                title: "All Chains",
                icon: CupertinoIcons.link,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  padding: EdgeInsets.all(4),
                  color: Colors.white10,
                  child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => CustomTableRowStatsPage(
                            tableRowModel: TableRowModel(
                                index,
                                index % 3 ==0 
                                    ? AssetsImageManager.artImage
                                    : AssetsImageManager.trending1Image,
                                "Azumi",
                                "View Info",
                                "2000044.34",
                                "3.99%",
                                index % 3 == 0 ? true : false),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 9,
                          ),
                      itemCount: 10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
