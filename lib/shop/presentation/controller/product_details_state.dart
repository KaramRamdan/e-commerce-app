part of 'product_details_bloc.dart';

class ProductDetailsState extends Equatable {
  const ProductDetailsState({
     this.productsDetails,
    this.productsDetailsState = RequestState.loading,
    this.productsDetailsMessage = '',
    this.category=const[],
    this.categoryState=RequestState.loading,
    this.categoryMessage='',
  });

  final  ProductsDetails? productsDetails;
  final RequestState productsDetailsState;
  final String productsDetailsMessage;
  final List<Category> category;
  final RequestState categoryState;
  final String categoryMessage;

  ProductDetailsState copyWith({
    ProductsDetails? productsDetails,
    RequestState? productsDetailsState,
    String? productsDetailsMessage,
    List<Category>?  category,
    RequestState ?  categoryState,
    String ?  categoryMessage,
  }) {
    return ProductDetailsState(
      productsDetails: productsDetails ?? this.productsDetails,
      productsDetailsState: productsDetailsState ?? this.productsDetailsState,
      productsDetailsMessage:
          productsDetailsMessage ?? this.productsDetailsMessage,
      category:  category??this. category,
      categoryState: categoryState??this. categoryState,
      categoryMessage:  categoryMessage??this. categoryMessage,
    );
  }

  @override
  List<Object?> get props => [
        productsDetails,
        productsDetailsState,
        productsDetailsMessage,
    category, categoryState, categoryMessage,
      ];
}
