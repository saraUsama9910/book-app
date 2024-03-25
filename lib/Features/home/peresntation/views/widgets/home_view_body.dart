import 'package:book_app/Features/home/peresntation/views/widgets/custom_app_bar.dart';
import 'package:book_app/Features/home/peresntation/views/widgets/featured_books_list_view.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBoy extends StatelessWidget {
  const HomeViewBoy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        Padding(
          padding: EdgeInsets.only(left: 15, bottom: 9, right: 15),
          child: FeaturedBooksListView(),
        ),
        SizedBox(
          height: 10,
          width: 15,
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
          child: Text(
            'Best Seller',
            style: Styles.textStyle20,
          ),
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                // height: MediaQuery.of(context).size.height * .3,
                // width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImage),
                  ),
                ),
              ),
            ),
            const Column(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
