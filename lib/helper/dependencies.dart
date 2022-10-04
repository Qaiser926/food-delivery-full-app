import 'package:food_develry_app/controller/popular_product_controller.dart';
import 'package:food_develry_app/data/api/api_client.dart';
import 'package:food_develry_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api client
  /// yaha par pass kare baseurl
  // Get.lazyPut(() => ApiClient(appBaseUrl: 'https://phptravels.net'));
  Get.lazyPut(() => ApiClient(appBaseUrl: 'https://mvs.bslmeiyu.com'));

// repo
  /// yaha par b apiClient kare ge .
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  // controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
