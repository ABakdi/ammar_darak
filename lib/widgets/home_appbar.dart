import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ammar_darak/utils/constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: Constants.kcontentColor,
            padding: const EdgeInsets.all(1),
          ),
          iconSize: 20,
          icon: const Icon(Ionicons.person_outline),
        ),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: Constants.kcontentColor,
            padding: const EdgeInsets.all(1),
          ),
          iconSize: 20,
          icon: const Icon(Ionicons.cart_outline),
        ),
      ],
    );
  }
}
