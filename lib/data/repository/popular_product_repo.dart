import 'package:get/get.dart';
import 'package:meal_delivery/data/api/api_client.dart';
import 'package:meal_delivery/utils/app_constants.dart';

class PopularProductRepo extends GetxService {
  //GetxService is used to load data from the internet
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}
