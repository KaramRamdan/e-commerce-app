import 'package:e_commerce_app/shop/domain/entities/products_details.dart';

class ProductsDetailsModel extends ProductsDetails {
const  ProductsDetailsModel(
      {required super.id,
      required super.title,
      required super.description,
      required super.price,
      required super.category,
      required super.image});

  factory ProductsDetailsModel.fromJson(Map<String, dynamic> json) =>
      ProductsDetailsModel(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        price: json['price'].toDouble(),
        category: json['category'],
        image: json['image'],
      );
}
