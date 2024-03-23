import 'package:book_app/Features/home/peresntation/views/widgets/custom_app_bar.dart';
import 'package:book_app/Features/home/peresntation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBoy extends StatelessWidget {
  const HomeViewBoy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), FeaturedBooksListView()],
    );
  }
}
