import 'package:ecommerceapp/Product_Items/products.dart';
import 'package:flutter/material.dart';

import '../../Colors/constrant._color.dart';

class ItemDetails extends StatelessWidget {
  final Product product;
  const ItemDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        const SizedBox(
          height: 11,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Rs ${product.price}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 21),
                ),
                const SizedBox(
                  height: 11,
                ),

                // rating

                Row(
                  children: [
                    Container(
                      width: 54,
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: kprimaryColor,
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 14,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            product.rate.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      product.review,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: "Seller  ",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextSpan(
                    text: product.seller,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
