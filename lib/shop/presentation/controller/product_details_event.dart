part of 'product_details_bloc.dart';


abstract class ProductDetailsEvent extends Equatable {
  const ProductDetailsEvent();
}

class GetProductDetailsEvent extends ProductDetailsEvent {
  final int id;

  const GetProductDetailsEvent(this.id,);

  @override
  List<Object> get props => [id];
}

class GetCategoryEvent extends ProductDetailsEvent {
  final String categoryName;

  const GetCategoryEvent(this.categoryName);

  @override
  List<Object> get props => [categoryName];
}