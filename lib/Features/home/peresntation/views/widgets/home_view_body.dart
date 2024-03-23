import 'package:book_app/Features/home/peresntation/views/widgets/custom_app_bar.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeViewBoy extends StatelessWidget {
  const HomeViewBoy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), CustomListViewItem()],
    );
  }
}

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 140,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsData.testImage),
        ),
      ),
    );
  }
}
