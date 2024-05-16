import 'dart:convert';

class Store {
  final int id;
  final String name;
  final String description;
  final List<String> images;
  final String? address;
  final String? phoneNumber;
  final String createdAt;
  final String updatedAt;
  final int? userId;

  /// response contains these
  final bool liked;
  final int likeCount;
  final int reviewCount;

  Store({
    required this.id,
    required this.name,
    required this.description,
    required this.images,
    required this.userId,
    required this.address,
    required this.phoneNumber,
    required this.createdAt,
    required this.updatedAt,

    /// response contains these
    required this.liked,
    required this.likeCount,
    required this.reviewCount,
  });

  Map<dynamic, dynamic> toMap() {
    return {
      id: id,
      name: name,
      description: description,
      images: images,
      address: address,
      userId: userId,
      phoneNumber: phoneNumber,
      createdAt: createdAt,
      updatedAt: updatedAt,
    };
  }

  factory Store.fromMap(Map<dynamic, dynamic> map) {
    return Store(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      images: map['images'] ? List<String>.from(map['images']) : [],
      address: map['address'],
      phoneNumber: map['phoneNumber'],
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      userId: map['userId'],

      /// response contains these
      liked: map['liked'] ?? false,
      likeCount: map['likeCount'] ?? 0,
      reviewCount: map['reviewCount'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Store.fromJson(String source) => Store.fromMap(json.decode(source));
}
