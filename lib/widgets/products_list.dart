import 'package:ammar_darak/models/product.dart';
import 'package:ammar_darak/models/store.dart';
import 'package:ammar_darak/models/user.dart';
import 'package:ammar_darak/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatefulWidget {
  final int storeId;

  const ProductsList({super.key, required this.storeId});

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  List<Product> products = List<Product>.from([
    Product(
      id: 0,
      name: "Chair",
      description:
          "Blue comfotable chaire, greate for relaxing, watching tv or reading. ",
      images: [
        "slipper-chair-isolated-transparent-background_191095-13677-removebg-preview.png",
        "slipper-chair-isolated-transparent-background_191095-13677-removebg-preview.png",
      ],
      price: 2000,
      soldPrice: 1500,
      stock: 200,
      storeId: 0,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",

      /// response contains these
      liked: true,
      likeCount: 232804,
      reviewCount: 345,
      averageRating: 4,
      userReview: null,
    ),
    Product(
      id: 0,
      name: "Chair",
      description:
          "Blue comfotable chaire, greate for relaxing, watching tv or reading. ",
      images: [
        "slipper-chair-isolated-transparent-background_191095-13677-removebg-preview.png",
        "slipper-chair-isolated-transparent-background_191095-13677-removebg-preview.png",
      ],
      price: 2000,
      soldPrice: 1500,
      stock: 200,
      storeId: 0,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",

      /// response contains these
      liked: true,
      likeCount: 232804,
      reviewCount: 345,
      averageRating: 4,
      userReview: null,
    ),
    Product(
      id: 0,
      name: "Chair",
      description:
          "Blue comfotable chaire, greate for relaxing, watching tv or reading. ",
      images: [
        "slipper-chair-isolated-transparent-background_191095-13677-removebg-preview.png",
        "slipper-chair-isolated-transparent-background_191095-13677-removebg-preview.png",
      ],
      price: 2000,
      soldPrice: 1500,
      stock: 200,
      storeId: 0,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",

      /// response contains these
      liked: true,
      likeCount: 232804,
      reviewCount: 345,
      averageRating: 4,
      userReview: null,
    ),
    Product(
      id: 0,
      name: "Chair",
      description:
          "Blue comfotable chaire, greate for relaxing, watching tv or reading. ",
      images: [
        "slipper-chair-isolated-transparent-background_191095-13677-removebg-preview.png",
        "slipper-chair-isolated-transparent-background_191095-13677-removebg-preview.png",
      ],
      price: 2000,
      soldPrice: 1500,
      stock: 200,
      storeId: 0,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",

      /// response contains these
      liked: true,
      likeCount: 232804,
      reviewCount: 345,
      averageRating: 4,
      userReview: null,
    ),
    Product(
      id: 0,
      name: "Chair",
      description:
          "Blue comfotable chaire, greate for relaxing, watching tv or reading. ",
      images: [
        "slipper-chair-isolated-transparent-background_191095-13677-removebg-preview.png",
        "slipper-chair-isolated-transparent-background_191095-13677-removebg-preview.png",
      ],
      price: 2000,
      soldPrice: 1500,
      stock: 200,
      storeId: 0,
      createdAt: "2022-01-01T00:00:00.000000Z",
      updatedAt: "2022-01-01T00:00:00.000000Z",

      /// response contains these
      liked: true,
      likeCount: 232804,
      reviewCount: 345,
      averageRating: 4,
      userReview: null,
    )
  ]);
  Widget build(BuildContext context) {
    return Expanded(
      // width: double.infinity,
      // height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemBuilder: (context, index) => ProductCard(product: products[index]),
        itemCount: products.length,
      ),
    );
  }
}
