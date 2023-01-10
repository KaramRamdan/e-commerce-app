import 'package:e_commerce_app/core/usecases/base_usecase.dart';
import 'package:e_commerce_app/shop/domain/entities/products.dart';
import 'package:e_commerce_app/shop/domain/repository/base_product_repository.dart';

class GetProductsUseCase extends BaseUseCase<List<Products>,NoParameters>{
  final BaseProductsRepository baseProductsRepository;

  GetProductsUseCase(this.baseProductsRepository);

  @override
  Future<List<Products>> call(NoParameters parameters)async {
 return await baseProductsRepository.getProducts();
  }
}