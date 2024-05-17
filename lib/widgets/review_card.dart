import 'package:ammar_darak/models/product.dart';
import 'package:ammar_darak/models/review.dart';
import 'package:ammar_darak/utils/constants.dart';
import 'package:ammar_darak/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

enum ReviewCartType { create, show }

class ReviewCard extends StatefulWidget {
  final Review? review;
  final Product? product;
  final ReviewCartType reviewCartType;
  const ReviewCard(
      {super.key, this.review, this.product, required this.reviewCartType});

  @override
  _ReviewCardState createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //image
              Row(
                children: [
                  widget.review!.user.image == null
                      ? Icon(Icons.person, size: 30)
                      : CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(
                              '${Constants.fileUri}${widget.review!.user.image}'),
                        ),

                  const SizedBox(width: 10),
                  //name
                  Text(widget.review!.user.name),
                ],
              ),

              //stars
              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Icon(
                        index < widget.review!.stars
                            ? Ionicons.star
                            : Ionicons.star_outline,
                        color: Colors.amber,
                        size: 15,
                      ),
                    ),
                    Text(
                      '  ${widget.review!.stars} ',
                      style: const TextStyle(fontSize: 10),
                    ),
                    Text(
                      '(${formatNumber(widget.product!.reviewCount ?? 0)})',
                      style: const TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
            ],
          ),

          //review
          Container(
            padding: EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 2),
            child: Text(widget.review!.comment ?? '',
                style: const TextStyle(fontSize: 15)),
          ),
        ],
      ),
    );
  }
}
