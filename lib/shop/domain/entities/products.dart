
import 'package:equatable/equatable.dart';

class Products extends Equatable {
  final int id;
  final String title;
  final String category;
  final double price;

  final String image;

  const Products({
    required this.id,
    required this.title,
    required this.category,

    required  this.price,

    required this.image,
  });

  @override
  List<Object> get props => [id, title, image,price,category];
}
