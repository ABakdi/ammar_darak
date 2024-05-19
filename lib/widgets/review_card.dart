import 'package:ammar_darak/models/product.dart';
import 'package:ammar_darak/models/review.dart';
import 'package:ammar_darak/models/user.dart';
import 'package:ammar_darak/providers/user_provider.dart';
import 'package:ammar_darak/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

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
  var _rating = 0.0;
  String _comment = "";
  bool _editMode = true;
  late TextEditingController commentController;
  late double ratingController;

  @override
  void initState() {
    print("INIT/...............");
    super.initState();
    _rating = widget.review == null ? 0.0 : widget.review!.stars;
    _comment = widget.review == null ? '' : widget.review!.comment ?? '';
    _editMode = (widget.review == null &&
        widget.reviewCartType == ReviewCartType.create);

    ratingController = _rating;
    commentController = TextEditingController(text: _comment);
  }

  void submitReview() {
    _comment = commentController.text;
    _rating = ratingController;
    print(_rating);
    print(_comment);
  }

  @override
  Widget build(BuildContext context) {
    User _user = widget.reviewCartType == ReviewCartType.create
        ? Provider.of<UserProvider>(context).user
        : widget.review!.user;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      margin: const EdgeInsets.only(bottom: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image
              Row(
                children: [
                  (widget.reviewCartType == ReviewCartType.show)
                      ? (_user.image == null
                          ? const Icon(Icons.person, size: 30)
                          : CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage(
                                  '${Constants.fileUri}${_user.image}'),
                            ))
                      : (_user.image == null
                          ? const Icon(Icons.person, size: 30)
                          : CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage(
                                  '${Constants.fileUri}${_user.image}'),
                            )),
                  const SizedBox(width: 10),
                  //name

                  Text(_user.name),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      alignment: Alignment.centerRight,
                      child: RatingBar.builder(
                        ignoreGestures: !_editMode,
                        itemSize: 15,
                        initialRating: ratingController,
                        minRating: 0.5,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => const Icon(
                          size: 5,
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          setState(() {
                            ratingController = rating;
                          });
                        },
                      ),
                    ),
                    Text(
                      '  ${ratingController} ',
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //review
          widget.reviewCartType == ReviewCartType.show
              ? Container(
                  padding: const EdgeInsets.only(
                      right: 10, left: 10, top: 5, bottom: 2),
                  child: Text(
                    widget.review!.comment ?? '',
                    style: const TextStyle(fontSize: 15),
                  ),
                )
              : Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, top: 0, bottom: 0),
                      margin: const EdgeInsets.all(0),
                      child: TextField(
                        readOnly: !_editMode,
                        maxLines: 1,
                        controller: commentController,
                        decoration: const InputDecoration(
                          hintText: 'Comment',
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _editMode
                            ? Container(
                                alignment: Alignment.centerRight,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size.zero,
                                    padding: const EdgeInsets.only(
                                        right: 10, left: 10, top: 3, bottom: 3),
                                    backgroundColor:
                                        const Color.fromRGBO(27, 27, 27, 1),
                                  ),
                                  child: Text('Cancel'),
                                  onPressed: () {
                                    setState(() {
                                      if (widget.review != null) {
                                        _editMode = false;
                                      }

                                      commentController.text = _comment;
                                      ratingController = _rating;
                                    });
                                  },
                                ),
                              )
                            : Container(),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: const EdgeInsets.only(
                                  right: 10, left: 10, top: 3, bottom: 3),
                              backgroundColor:
                                  const Color.fromRGBO(27, 27, 27, 1),
                            ),
                            child: _editMode
                                ? const Text('Submit')
                                : const Text('Edit'),
                            onPressed: () {
                              setState(() {
                                if (!_editMode) {
                                  _editMode = true;
                                } else {
                                  submitReview();
                                  if (widget.review != null) {
                                    _editMode = false;
                                  }
                                }
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                )
        ],
      ),
    );
  }
}
