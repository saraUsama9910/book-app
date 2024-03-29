import 'package:book_app/Features/home/peresntation/views/widgets/best_seller_list_view_item.dart';
import 'package:book_app/Features/home/peresntation/views/widgets/custom_app_bar.dart';
import 'package:book_app/Features/home/peresntation/views/widgets/featured_books_list_view.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBoy extends StatelessWidget {
  const HomeViewBoy({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
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
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        )
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
