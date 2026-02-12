import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resourses/routes_managers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:RoutesManagers.routes,
      initialRoute:RouteName.onBoardingPage ,
    );
  }
}
