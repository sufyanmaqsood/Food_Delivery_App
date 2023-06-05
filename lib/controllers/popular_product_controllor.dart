import 'package:get/get.dart';
import 'package:meal_delivery/data/repository/popular_product_repo.dart';
import 'package:meal_delivery/models/products_model.dart';

class PopularProductControllor extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductControllor({required this.popularProductRepo});
  List<ProductsModel> _popularProductList = [];
  List<ProductsModel> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print('got products');
      _popularProductList = [];
      _popularProductList.addAll(
          Product.fromJson(response.body).products as Iterable<ProductsModel>);

      update();
    } else {
      print('products not Found');
    }
  }
}
