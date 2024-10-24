import 'package:flutter/material.dart';

import '../../Product_Items/products.dart';
import '../../Provider/favorite_provider.dart';

class DetailsAppBar extends StatelessWidget {
  final Product product;
  const DetailsAppBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Padding(
      padding: const EdgeInsets.all(11),
      child: Row(
        children: [
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(14)),
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
              icon: const Icon(Icons.arrow_back_ios)),
          const Spacer(),
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(14)),
              onPressed: () {},
              icon: const Icon(Icons.share_outlined)),
          const SizedBox(
            width: 11,
          ),
          IconButton(
            style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(14)),
            onPressed: () {
              provider.toggleFavorite(product);
            },
            icon: Icon(
              provider.isExist(product)
                  ? Icons.favorite
                  : Icons.favorite_outline,
              color: Colors.red,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
