
import 'package:e_commerce_app/shop/domain/entities/products.dart';

class ProductsModel extends Products {
   const ProductsModel({
    required super.id,
    required super.title,
    required super.category,
    required super.price,
    required super.image,
  });
  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        id: json['id'],
        title: json['title'],
    category: json['category'],
        price: json['price'].toDouble() ??'....',
        image: json['image'],
      );
}
