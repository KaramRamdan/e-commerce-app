import 'package:equatable/equatable.dart';

class ProductsDetails extends Equatable {
  final int id;
  final String title;
  final String description;
  final double ?price;
  final String category;
  final String image;

  const ProductsDetails({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.image,
  });

  @override
  List<Object> get props => [
        id,
        title,
        description,
        category,
        image,
        price!,
      ];
}
