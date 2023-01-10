part of 'products_bloc.dart';

class ProductsState extends Equatable {
  final List<Products> product;
  final RequestState productsState;
  final String productsMessage;

  const ProductsState({
    this.product = const[],
    this.productsState = RequestState.loading,
    this.productsMessage = '',
  });
ProductsState copyWith({
  List<Products>? product,
   RequestState ? productsState,
   String ? productsMessage,
}){
  return ProductsState(
   product: product??this.product,
    productsState: productsState??this.productsState,
    productsMessage: productsMessage??this.productsMessage,
  );
}
  @override
  List<Object> get props => [product, productsState, productsMessage,];
}
