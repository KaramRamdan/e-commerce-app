import 'package:dio/dio.dart';
import 'package:e_commerce_app/core/network/api_constance.dart';
import 'package:e_commerce_app/shop/data/models/category_model.dart';
import 'package:e_commerce_app/shop/data/models/products_model.dart';
import 'package:e_commerce_app/shop/domain/usecases/get_category_products_usecase.dart';
import 'package:e_commerce_app/shop/domain/usecases/get_products_details_usecase.dart';

import '../models/products_details_model.dart';

abstract class BaseProductsRemoteDataSource {
  Future<List<ProductsModel>> getProducts();
  Future<ProductsDetailsModel> getProductsDetails(
      ProductsDetailsParameters parameters);
  Future<List<CategoryModel>> getCategory(
      CategoryProductsParameters parameters
      ) ;
}

class ProductsRemoteDataSource extends BaseProductsRemoteDataSource {
  @override
  Future<List<ProductsModel>> getProducts() async {
    final response = await Dio().get(ApiConstance.allProductsPath);
    return List<ProductsModel>.from((response.data).map(
      (e) => ProductsModel.fromJson(e),
    ));
  }

  @override
  Future<ProductsDetailsModel> getProductsDetails(
      ProductsDetailsParameters parameters) async {
    final response =
        await Dio().get(ApiConstance.productPath(parameters.productsId));

    return ProductsDetailsModel.fromJson(response.data);
  }

  @override
  Future<List<CategoryModel>> getCategory(CategoryProductsParameters parameters)async {
    final response = await Dio().get(ApiConstance.categoryPath(parameters.categoryName));
    return List<CategoryModel>.from((response.data).map(
          (e) => CategoryModel.fromJson(e),
    ));
  }
  
}
