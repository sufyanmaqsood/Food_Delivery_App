import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal_delivery/controllers/popular_product_controllor.dart';
import 'package:meal_delivery/pages/food/popular_food_detail.dart';
import 'package:meal_delivery/pages/food/recommeneded_food_detail.dart';
import 'package:meal_delivery/pages/home/food_page_body.dart';
import 'package:meal_delivery/pages/home/main_food_page.dart';
import 'package:meal_delivery/helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // this widget is the root of the application

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductControllor>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );
  }
}
