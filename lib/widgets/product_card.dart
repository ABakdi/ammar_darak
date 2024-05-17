import 'package:ammar_darak/models/product.dart';
import 'package:ammar_darak/utils/constants.dart';
import 'package:ammar_darak/utils/utils.dart';
import 'package:ammar_darak/widgets/image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';

class ProductCard extends StatefulWidget {
  final Product product;

  const ProductCard({super.key, required this.product});
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    bool isOnSale = widget.product.soldPrice == Null ? false : true;
    bool isliked = widget.product.liked! ? true : false;
    double averageRating = widget.product.averageRating ?? 0;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ImageSlider(
            images: widget.product.images,
            width: MediaQuery.of(context).size.width * 0.5),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.product.name,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text(
                widget.product.description,
                textAlign: TextAlign.left,
                maxLines: 30,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${widget.product.price} \$',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: isOnSale ? Colors.red : Colors.green,
                    decoration: isOnSale ? TextDecoration.lineThrough : null,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                isOnSale
                    ? Text(
                        '${widget.product.soldPrice} \$',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      )
                    : Container(),
              ],
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.favorite_sharp,
                          color: isliked ? Colors.red : Colors.grey,
                          size: 19,
                        ),
                        onTap: () {
                          setState(() {
                            isliked = !isliked;
                            //widget.product.liked = isliked;
                          });
                        },
                      ),
                      Text(
                        formatNumber(widget.product.likeCount!),
                        style: const TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    child: const Icon(
                      Ionicons.cart,
                      color: Color.fromRGBO(14, 13, 13, 0.767),
                      size: 20,
                    ),
                    onTap: () {
                      print('add to cart');
                    },
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    child: const Icon(
                      Ionicons.storefront,
                      color: Color.fromRGBO(14, 13, 13, 0.767),
                      size: 20,
                    ),
                    onTap: () {
                      print('go to store');
                    },
                  )
                ],
              ),
            ),

            const SizedBox(height: 5),
            //stars review
            Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  ...List.generate(
                    5,
                    (index) => Icon(
                      index < averageRating
                          ? Ionicons.star
                          : Ionicons.star_outline,
                      color: Colors.amber,
                      size: 15,
                    ),
                  ),
                  Text(
                    '  ${averageRating} ',
                    style: const TextStyle(fontSize: 10),
                  ),
                  Text(
                    '(${formatNumber(widget.product.reviewCount ?? 0)})',
                    style: const TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
