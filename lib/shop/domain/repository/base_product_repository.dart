import 'package:e_commerce_app/shop/domain/entities/category.dart';
import 'package:e_commerce_app/shop/domain/entities/products.dart';
import 'package:e_commerce_app/shop/domain/entities/products_details.dart';
import 'package:e_commerce_app/shop/domain/usecases/get_products_details_usecase.dart';

import '../usecases/get_category_products_usecase.dart';

abstract class BaseProductsRepository {
  Future<List<Products>> getProducts();

  Future<ProductsDetails> getProductsDetails(
      ProductsDetailsParameters parameters);

  Future<List<Category>> getCategoryProducts(
      CategoryProductsParameters parameters);
}
