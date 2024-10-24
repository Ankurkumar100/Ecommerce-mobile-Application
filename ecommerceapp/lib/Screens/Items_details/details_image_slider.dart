import 'package:flutter/material.dart';

class DetailsImageSlider extends StatelessWidget {
  final Function(int) onchange;
  final String image;
  const DetailsImageSlider(
      {super.key, required this.onchange, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 249,
      child: PageView.builder(
        onPageChanged: onchange,
        itemBuilder: (context, index) {
          return Hero(tag: image, child: Image.asset(image));
        },
      ),
    );
  }
}
