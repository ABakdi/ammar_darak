import 'package:ammar_darak/models/product.dart';
import 'package:ammar_darak/models/review.dart';
import 'package:ammar_darak/models/store.dart';
import 'package:ammar_darak/models/user.dart';
import 'package:ammar_darak/providers/user_provider.dart';
import 'package:ammar_darak/services/auth_services.dart';
import 'package:ammar_darak/utils/constants.dart';
import 'package:ammar_darak/widgets/home_appbar.dart';
import 'package:ammar_darak/widgets/image_slider.dart';
import 'package:ammar_darak/widgets/product_card.dart';
import 'package:ammar_darak/widgets/product_detail.dart';
import 'package:ammar_darak/widgets/products_list.dart';
import 'package:ammar_darak/widgets/review_card.dart';
import 'package:ammar_darak/widgets/reviews_list.dart';
import 'package:ammar_darak/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:ammar_darak/providers/user_provider.dart';
//import 'package:ammar_darak/services/auth_services.dart';
//import 'package:ammar_darak/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlide = 0;
  Product product = Product(
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
  );

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

  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      backgroundColor: Constants.kscaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              //const SizedBox(height: 20),
              const SearchField(),
              //const SizedBox(height: 20),
              //ProductCard(product: product),
              //ProductDetails(product: product, review: reviews),
              const SizedBox(height: 20),
              // ReviewCard(
              //   reviewCartType: ReviewCartType.create,
              //   review: reviews[1],
              //   product: product,
              // ),
              ProductsList(storeId: 4),
              //const SizedBox(height: 20),
              //ReviewsList(product: product, store: null),
              //const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
