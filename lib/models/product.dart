import 'dart:convert';

class Product {
  final int id;
  final String name;
  final String description;
  final List<String> images;
  final double price;
  final double soldPrice;
  final int? stock;
  final int? storeId;
  final String createdAt;
  final String? updatedAt;

  final bool? liked;
  final int? likeCount;
  final int? reviewCount;
  final double? averageRating;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.images,
    required this.price,
    required this.soldPrice,
    required this.stock,
    required this.storeId,
    required this.createdAt,
    required this.updatedAt,

    /// response contains these
    required this.liked,
    required this.likeCount,
    required this.reviewCount,
    required this.averageRating,
  });

  Map<dynamic, dynamic> toMap() {
    return {
      id: id,
      name: name,
      description: description,
      images: images,
      price: price,
      soldPrice: soldPrice,
      stock: stock,
      storeId: storeId,
      createdAt: createdAt,
      updatedAt: updatedAt,

      /// response contains these
      liked: liked,
      likeCount: likeCount,
      reviewCount: reviewCount,
      averageRating: averageRating,
    };
  }

  factory Product.fromMap(Map<dynamic, dynamic> map) {
    return Product(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      images: List<String>.from(map['images']),
      price: map['price']?.toDouble() ?? 0.0,
      soldPrice: map['soldPrice']?.toDouble() ?? 0.0,
      stock: map['stock']?.toInt() ?? 0,
      storeId: map['storeId']?.toInt() ?? 0,
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',

      /// response contains these
      liked: map['liked'] ?? false,
      likeCount: map['likeCount']?.toInt() ?? 0,
      reviewCount: map['reviewCount']?.toInt() ?? 0,
      averageRating: map['averageRating']?.toDouble() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
