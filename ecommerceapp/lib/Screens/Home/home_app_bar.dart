import 'package:flutter/material.dart';

import '../../Colors/constrant._color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              padding: const EdgeInsets.all(21)),
          onPressed: () {},
          iconSize: 28,
          icon: Image.asset(
            "images/icon.png",
            scale: 30,
          ),
        ),
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: kcontentColor,
                padding: const EdgeInsets.all(21)),
            onPressed: () {},
            iconSize: 28,
            icon: const Icon(Icons.notifications_outlined)),
      ],
    );
  }
}
