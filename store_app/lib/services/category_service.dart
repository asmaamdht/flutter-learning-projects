import 'package:store_app/helpers/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoryService {
  Future<List<ProductModel>> getCategoriesProducts({
    required String categoryName,
  }) async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/category/$categoryName',
    );

    List<ProductModel> categoryProductsList = [];
    for (int i = 0; i < data.length; i++) {
      categoryProductsList.add(ProductModel.fromJson(data[i]));
    }

    return categoryProductsList;
  }
}
