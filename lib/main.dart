

import 'package:flutter/material.dart';
import 'package:food_develry_app/controller/popular_product_controller.dart';
import 'package:food_develry_app/pages/homePage.dart';
import 'package:food_develry_app/pages/recommended_food_detail.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;
Future<void> main() async{
  /// ye method
  WidgetsFlutterBinding.ensureInitialized();

  /// ab init method ko call kare ge yaha main see our upar library import kia
  // jab app run hota he to ye niche method koshosh karta he k dependency ko load kare

  await dep.init;
  runApp(foodDeliveryApp());
}
class foodDeliveryApp extends StatefulWidget {
  const foodDeliveryApp({Key? key}) : super(key: key);

  @override
  State<foodDeliveryApp> createState() => _foodDeliveryAppState();
}

class _foodDeliveryAppState extends State<foodDeliveryApp> {

  // late   PopularProductController controller=Get.put(PopularProductController(popularProductRepo: Get.find()));
  var imag='';
  @override
  Widget build(BuildContext context) {
    /// ab yaha par controller ko call kia controller see baki method call ho gi /
    //
    // Get.put(() => PopularProductController(popularProductRepo: Get.find()));
    //
   // controller= Get.find<PopularProductController>().getPopularProductList() as PopularProductController;
    // controller;
    return GetMaterialApp(

      home: HomePage(),

      // home: RecommendedFoodDetail(),

    );
  }
}
