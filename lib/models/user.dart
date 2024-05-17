import 'dart:convert';

class User {
  final int id;
  final String email;
  final String name;
  final String username;
  final bool confirmed;
  final String createdAt;
  final String updatedAt;
  final String token;
  final String role;
  final String? image;

  User({
    required this.id,
    required this.email,
    required this.name,
    required this.role,
    required this.username,
    required this.confirmed,
    required this.createdAt,
    required this.updatedAt,
    required this.token,
    this.image,
  });

  Map<dynamic, dynamic> toMap() {
    return {
      id: id,
      name: name,
      email: email,
      role: role,
      username: username,
      confirmed: confirmed,
      createdAt: createdAt,
      updatedAt: updatedAt,
      token: token,
      image: image
    };
  }

  factory User.fromMap(Map<dynamic, dynamic> map) {
    return User(
      id: map['id'] ?? 0,
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      role: map['role'] ?? '',
      username: map['username'] ?? '',
      confirmed: map['confirmed'] ?? false,
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      token: map['accessToken'] ?? '',
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
