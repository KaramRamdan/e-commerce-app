import 'package:e_commerce_app/core/usecases/base_usecase.dart';
import 'package:e_commerce_app/shop/domain/entities/category.dart';
import 'package:e_commerce_app/shop/domain/repository/base_product_repository.dart';
import 'package:equatable/equatable.dart';

class GetCategoryProductsUseCase
    extends BaseUseCase<List<Category>, CategoryProductsParameters> {
  final BaseProductsRepository baseProductsRepository;

  GetCategoryProductsUseCase(this.baseProductsRepository);

  @override
  Future<List<Category>> call(CategoryProductsParameters parameters) async {
    return await baseProductsRepository.getCategoryProducts(parameters);
  }
}

class CategoryProductsParameters extends Equatable {
  final String categoryName;

  const CategoryProductsParameters({required this.categoryName});

  @override
  List<Object?> get props => [categoryName];
}
