import 'dart:convert';

import 'user.dart';

class Review {
  final int id;
  final User user;
  final int? storeId;
  final int? productId;
  final String? comment;
  final double stars;
  final String createdAt;
  final String? updatedAt;

  Review({
    required this.id,
    required this.user,
    required this.storeId,
    required this.productId,
    required this.comment,
    required this.stars,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<dynamic, dynamic> toMap() {
    return {
      id: id,
      user: user,
      storeId: storeId,
      productId: productId,
      comment: comment,
      stars: stars,
      createdAt: createdAt,
      updatedAt: updatedAt,
    };
  }

  factory Review.fromMap(Map<dynamic, dynamic> map) {
    return Review(
      id: map['id'] ?? '',
      user: map['user'],
      storeId: map['storeId'] ?? Null,
      productId: map['productId'] ?? Null,
      comment: map['comment'] ?? Null,
      stars: map['stars'] ?? '',
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? Null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Review.fromJson(String source) => Review.fromMap(json.decode(source));
}
