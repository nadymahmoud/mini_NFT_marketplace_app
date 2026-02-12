import 'package:flutter/cupertino.dart';
import 'package:mini_nft_marketplace_app/core/resourses/constans.dart';

import '../widgets/custom_card_collection.dart';
import '../widgets/custom_category_home_page.dart';
import '../widgets/custom_subtitle_home.dart';
import '../widgets/custom_top_seller.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
                height: 170,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext, index) {
                      return CustomCategoryHomePage(
                        title: Constans.CategroyList[index].title,
                        image: Constans.CategroyList[index].Image,
                      );
                    },
                    separatorBuilder: (BuildContext, int) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: Constans.CategroyList.length)),
            SizedBox(
              height: 10,
            ),
            CustomSubtitle(
              title: "Trending collections",
            ),
            SizedBox(
              height: 191,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext, int) => SizedBox(
                        width: 10,
                      ),
                  itemCount: 3,
                  itemBuilder: (BuildContext, index) => CustomCardCollection(
                        collectionModel: Constans.collectionList[index],
                      )),
            ),
            CustomSubtitle(
              title: "Top seller",
            ),
            SizedBox(
              height: 240,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext, int) => SizedBox(
                  width: 10,
                ),
                itemCount: 3,
                itemBuilder: (BuildContext, index) => CustomTopSeller(
                  tobModel: Constans.topList[index],
                ),
              ),
            ),
          ],
        ),
      ) ;
  }
}