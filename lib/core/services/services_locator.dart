import 'package:e_commerce_app/shop/data/datasource/products_remote_data_source.dart';
import 'package:e_commerce_app/shop/data/repository/products_repository.dart';
import 'package:e_commerce_app/shop/domain/repository/base_product_repository.dart';
import 'package:e_commerce_app/shop/domain/usecases/get_category_products_usecase.dart';
import 'package:e_commerce_app/shop/domain/usecases/get_products_details_usecase.dart';
import 'package:e_commerce_app/shop/domain/usecases/get_products_usecase.dart';
import 'package:e_commerce_app/shop/presentation/controller/product_details_bloc.dart';
import 'package:e_commerce_app/shop/presentation/controller/products_bloc.dart';
import 'package:get_it/get_it.dart';




final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///BLoc

    sl.registerFactory(() => ProductsBloc(
          sl(),
        ));

    sl.registerFactory(() => ProductDetailsBloc(
          sl(),sl()
        ));


    /// REPOSITORY

    sl.registerLazySingleton<BaseProductsRepository>(
        () => ProductsRepository(sl()));

    ///DATA SOURCE

    sl.registerLazySingleton<BaseProductsRemoteDataSource>(
        () => ProductsRemoteDataSource());

    ///USE CASES

    sl.registerLazySingleton(() => GetProductsUseCase(sl()));
    sl.registerLazySingleton(() => GetProductsDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetCategoryProductsUseCase(sl()));
  }
}
