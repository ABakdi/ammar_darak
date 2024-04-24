import 'dart:convert';

class User {
  final String id;
  final String email;
  final String name;
  final String username;
  final bool confirmed;
  final String createdAt;
  final String updatedAt;
  final String token;

  User({
    required this.id,
    required this.email,
    required this.name,
    required this.username,
    required this.confirmed,
    required this.createdAt,
    required this.updatedAt,
    required this.token,
  });

  Map<dynamic, dynamic> toMap() {
    return {
      id: id,
      name: name,
      email: email,
      username: username,
      confirmed: confirmed,
      createdAt: createdAt,
      updatedAt: updatedAt,
      token: token,
    };
  }

  factory User.fromMap(Map<dynamic, dynamic> map) {
    return User(
      id: map['_id'] ?? '',
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      confirmed: map['confirmed'] ?? false,
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
