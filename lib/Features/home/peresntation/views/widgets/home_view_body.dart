import 'package:book_app/Features/home/peresntation/views/widgets/custom_app_bar.dart';
import 'package:book_app/Features/home/peresntation/views/widgets/featured_books_list_view.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBoy extends StatelessWidget {
  const HomeViewBoy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 10,
            width: 15,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 12, bottom: 30),
            child: Text(
              'Best Seller',
              style: Styles.textStyle20,
            ),
          )
        ],
      ),
    );
  }
}
