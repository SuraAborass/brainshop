import 'dart:convert';
import 'package:brainshop/DataAccessLayer/Models/category.dart';

import 'color.dart';


class Product {
  final int id;
  final String name;
  final String price;
  final String offer;
  final String description;
  final String brand;
  final String images;
  final Category category;
  final List<ProductColor>? colors;
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.offer,
    required this.description,
    required this.brand,
    required this.images,
    required this.category,
    this.colors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name' : name,
      'price' : price,
      'offer' : offer,
      'description': description,
      'brand' : brand,
      'images' : images,
      'category' : category,
      'colors' : colors,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int,
      name: map['name'] as String,
      price: map['price'] as String,
      offer: map['offer'] as String,
      description: map['description'] as String,
      brand: map['brand'] as String,
      images: map['images'] as String,
      category: Category.fromMap(map['category']),
      colors:
      map['colors'] != null ? colorsfromJson(jsonEncode(map['colors'])) : null,
    );
  }
  static List<ProductColor> colorsfromJson(String json) {
    final parsed = jsonDecode(json).cast<Map<String, dynamic>>();
    return parsed.map<ProductColor>((json) => ProductColor.fromMap(json)).toList();
  }

  String toJson() => json.encode(toMap());
  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
