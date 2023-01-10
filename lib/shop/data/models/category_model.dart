import 'package:e_commerce_app/shop/domain/entities/category.dart';

class CategoryModel extends Category {
  const CategoryModel({
    required super.id,
    required super.title,
    required super.category,
    required super.price,
    required super.image,
  });
  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json['id'],
        title: json['title'],
        price: json['price'].toDouble() ?? '....',
        image: json['image'],
      category: json['category'],
      );
}
