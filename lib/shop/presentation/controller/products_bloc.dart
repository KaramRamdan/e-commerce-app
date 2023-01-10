import 'dart:async';
import 'package:e_commerce_app/core/usecases/base_usecase.dart';
import 'package:e_commerce_app/core/utils/enums.dart';
import 'package:e_commerce_app/shop/domain/entities/products.dart';
import 'package:e_commerce_app/shop/domain/usecases/get_products_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final GetProductsUseCase getProductsUseCase;

  ProductsBloc(this.getProductsUseCase) : super(const ProductsState()) {

    on<GetProductsEvents>(_getProductsUseCase);
  }

  FutureOr<void> _getProductsUseCase(
      GetProductsEvents event, Emitter<ProductsState> emit) async {
    final result = await getProductsUseCase(const NoParameters());
    emit(state.copyWith(
      product: result,
      productsState: RequestState.loaded,
    ));
  }
}
