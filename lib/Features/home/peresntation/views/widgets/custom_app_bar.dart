import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo2,
            color: Colors.white,
            height: 80,
            width: 100,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
