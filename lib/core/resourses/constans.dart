import 'package:mini_nft_marketplace_app/core/resourses/assets_manager.dart';
import 'package:mini_nft_marketplace_app/model/category_home.dart';
import 'package:mini_nft_marketplace_app/model/collection_model.dart';
import 'package:mini_nft_marketplace_app/model/top_model.dart';

class Constans {
  static List<CategoryHome> CategroyList = [
    CategoryHome(title: "Music", Image: AssetsImageManager.musicImage),
    CategoryHome(title: "Art", Image: AssetsImageManager.artImage),
    CategoryHome(title: "World", Image: AssetsImageManager.worldImage),
  ];
  static List<CollectionModel> collectionList = [
    CollectionModel(AssetsImageManager.trending1Image, "3D Art", 200, true),
    CollectionModel(AssetsImageManager.trending2Image, "Abstract ", 300, true),
    CollectionModel(
        AssetsImageManager.trending3Image, "Portrait  ", 400, false),
  ];
  static List<TopModel> topList = [
   TopModel(
                      image: AssetsImageManager.top1Image,
                      title: "Abstract Pink",
                      subtitle: "Abstract Pink",
                      count1: 909,
                      count2: 200,
                      isActive: true),
                         TopModel(
                      image: AssetsImageManager.top2Image,
                      title: "Abstract Pink",
                      subtitle: "Abstract Pink",
                      count1: 909,
                      count2: 200,
                      isActive: true),
                         TopModel(
                      image: AssetsImageManager.top3Image,
                      title: "Abstract Pink",
                      subtitle: "Abstract Pink",
                      count1: 909,
                      count2: 200,
                      isActive: true),
                 
  ];
}
