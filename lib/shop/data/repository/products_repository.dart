import 'package:e_commerce_app/shop/data/datasource/products_remote_data_source.dart';
import 'package:e_commerce_app/shop/domain/entities/category.dart';
import 'package:e_commerce_app/shop/domain/entities/products.dart';
import 'package:e_commerce_app/shop/domain/entities/products_details.dart';
import 'package:e_commerce_app/shop/domain/repository/base_product_repository.dart';
import 'package:e_commerce_app/shop/domain/usecases/get_category_products_usecase.dart';
import 'package:e_commerce_app/shop/domain/usecases/get_products_details_usecase.dart';

class ProductsRepository extends BaseProductsRepository{
  final BaseProductsRemoteDataSource baseProductsRemoteDataSource;

  ProductsRepository(this.baseProductsRemoteDataSource);

  @override
  Future<List<Products>> getProducts()async {
    final  result= await baseProductsRemoteDataSource.getProducts();
  return result;
  }

  @override
  Future<ProductsDetails> getProductsDetails(
      ProductsDetailsParameters parameters) async{
   final result= await baseProductsRemoteDataSource.getProductsDetails(parameters);
   return result;
  }

  @override
  Future<List<Category>> getCategoryProducts(CategoryProductsParameters parameters)async {
    final  result= await baseProductsRemoteDataSource.getCategory(parameters);
    return result;
  }
}