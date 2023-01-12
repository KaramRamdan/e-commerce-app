import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_app/core/utils/enums.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/products_details.dart';
import '../../domain/usecases/get_category_products_usecase.dart';
import '../../domain/usecases/get_products_details_usecase.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  ProductDetailsBloc(
      this.getProductsDetailsUseCase, this.getCategoryProductsUseCase)
      : super(const ProductDetailsState()) {
    on<GetProductDetailsEvent>(_getProductDetailsUseCase);
    on<GetCategoryEvent>(_getCategoryUseCase);
  }
  final GetCategoryProductsUseCase getCategoryProductsUseCase;
  final GetProductsDetailsUseCase getProductsDetailsUseCase;
  FutureOr<void> _getProductDetailsUseCase(
      GetProductDetailsEvent event, Emitter<ProductDetailsState> emit) async {
    final result = await getProductsDetailsUseCase(
        ProductsDetailsParameters(productsId: event.id));
    emit(state.copyWith(
      productsDetails: result,
      productsDetailsState: RequestState.loaded,
    ));
  }

  FutureOr<void> _getCategoryUseCase(
      GetCategoryEvent event, Emitter<ProductDetailsState> emit) async {
    final result = await getCategoryProductsUseCase(
        CategoryProductsParameters(categoryName: event.categoryName));
    emit(state.copyWith(
      category: result,
      categoryState: RequestState.loaded,
    ));
  }
}
