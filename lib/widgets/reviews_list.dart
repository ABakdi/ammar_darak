import 'package:ammar_darak/models/product.dart';
import 'package:ammar_darak/models/review.dart';
import 'package:ammar_darak/models/store.dart';
import 'package:ammar_darak/models/user.dart';
import 'package:ammar_darak/widgets/review_card.dart';
import 'package:flutter/material.dart';

class ReviewsList extends StatefulWidget {
  final Product? product;
  final Store? store;

  const ReviewsList({super.key, required this.product, required this.store});

  @override
  State<ReviewsList> createState() => _ReviewsListState();
}

class _ReviewsListState extends State<ReviewsList> {
  List<Review> reviews = List<Review>.from([
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 0,
      user: User(
        id: 2,
        name: "Ammar Darak",
        email: "jvDldkfkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "cdca80b001d4655d8576e5f570f191ea.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 2,
      comment:
          "Nice Chair , best chair I have ever seen in my life, good quality, good price",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    ),
    Review(
      id: 1,
      user: User(
        id: 0,
        name: "Ammar Darak",
        email: "jvDkK@example.com",
        role: "user",
        username: "ammar",
        confirmed: true,
        createdAt: "2022-01-01T00:00:00.000000Z",
        updatedAt: "2022-01-01T00:00:00.000000Z",
        image: "3fcb513183b094b643a10c74bed38b1e.jpg",
        token: "",
      ),
      storeId: 0,
      productId: 1,
      comment: "Nice Chair, best chair",
      stars: 5,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",
    )
  ]);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // width: double.infinity,
      // height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemBuilder: (context, index) => ReviewCard(
          review: reviews[index],
          product: widget.product,
          reviewCartType: ReviewCartType.show,
          //store: widget.store,
        ),
        itemCount: reviews.length,
      ),
    );
  }
}
