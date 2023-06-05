import 'package:get/get.dart';
import 'package:meal_delivery/controllers/popular_product_controllor.dart';
import 'package:meal_delivery/data/api/api_client.dart';
import 'package:meal_delivery/data/repository/popular_product_repo.dart';
import 'package:meal_delivery/utils/app_constants.dart';

Future<void> init() async {
  //api clint
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //controllor
  Get.lazyPut(() => PopularProductControllor(popularProductRepo: Get.find()));
}
