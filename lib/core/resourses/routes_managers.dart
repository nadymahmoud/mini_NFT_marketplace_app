import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/features/home/screens/home_screen.dart';
import 'package:mini_nft_marketplace_app/features/on_boarding/screens/on_boarding_page.dart';
import 'package:mini_nft_marketplace_app/features/stats/screens/stats_screen.dart';

class RoutesManagers{
 static Map<String, Widget Function(BuildContext)> routes = {
   RouteName.onBoardingPage: (context) => OnBoardingPage(),
   'home_screen': (context) =>HomeScreen(),
      RouteName.statsPage: (context) =>StatsScreen(),

 };
}
class RouteName {
  static const String onBoardingPage = 'on_boarding_page';
    static const String statsPage =  'stats_screen';

}