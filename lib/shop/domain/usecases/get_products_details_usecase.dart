import 'package:e_commerce_app/core/usecases/base_usecase.dart';
import 'package:e_commerce_app/shop/domain/entities/products_details.dart';
import 'package:e_commerce_app/shop/domain/repository/base_product_repository.dart';
import 'package:equatable/equatable.dart';

class GetProductsDetailsUseCase
    extends BaseUseCase<ProductsDetails, ProductsDetailsParameters> {
  final BaseProductsRepository baseProductsRepository;

  GetProductsDetailsUseCase(this.baseProductsRepository);

  @override
  Future<ProductsDetails> call(
      ProductsDetailsParameters parameters) async{
    return await baseProductsRepository.getProductsDetails(parameters);

  }
}

class ProductsDetailsParameters extends Equatable {
  final int productsId;

  const ProductsDetailsParameters({required this.productsId});

  @override
  List<Object?> get props => [productsId];
}
