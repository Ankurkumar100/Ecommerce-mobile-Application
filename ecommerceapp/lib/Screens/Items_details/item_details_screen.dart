import 'package:ecommerceapp/screens/Cart/add_to_cart.dart';
import 'package:ecommerceapp/screens/Cart/description.dart';
import 'package:ecommerceapp/screens/Items_details/details_app_bar.dart';
import 'package:ecommerceapp/screens/Items_details/details_image_slider.dart';
import 'package:ecommerceapp/screens/Items_details/item_details.dart';
import 'package:ecommerceapp/Product_Items/products.dart';
import 'package:flutter/material.dart';

import '../../Colors/constrant._color.dart';

class ItemDetailsScreen extends StatefulWidget {
  final Product product;
  const ItemDetailsScreen({super.key, required this.product});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  int currentImage = 0;
  int currentColor = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,

      // Add to cart & quantity

      floatingActionButton: AddToCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // back bottun share & favorite

            DetailsAppBar(
              product: widget.product,
            ),

            // details image slider

            DetailsImageSlider(
                onchange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
                image: widget.product.image),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 350),
                  width: currentImage == index ? 15 : 8,
                  height: 10,
                  margin: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: currentImage == index
                        ? Colors.white
                        : Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(39),
                  topLeft: Radius.circular(39),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 21, right: 21, top: 21, bottom: 99),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //product name , price , rating ,& seller

                  ItemDetails(product: widget.product),
                  const SizedBox(
                    height: 21,
                  ),

                  const Text(
                    "Color",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(
                    height: 21,
                  ),
                  Row(
                    children: List.generate(
                      widget.product.colors.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentColor = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(
                            milliseconds: 300,
                          ),
                          width: 34,
                          height: 34,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentColor == index
                                ? Colors.white
                                : widget.product.colors[index],
                            border: currentColor == index
                                ? Border.all(
                                    color: widget.product.colors[index])
                                : null,
                          ),
                          padding: currentColor == index
                              ? const EdgeInsets.all(2)
                              : null,
                          margin: const EdgeInsets.only(right: 11),
                          child: Container(
                            width: 41,
                            height: 41,
                            decoration: BoxDecoration(
                              color: widget.product.colors[index],
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 21,
                  ),
                  //description
                  Description(description: widget.product.description),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
