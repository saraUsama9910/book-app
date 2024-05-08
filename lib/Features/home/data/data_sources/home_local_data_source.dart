import 'package:book_app/Features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> featchFeaturedBooks();
  List<BookEntity> featchNewestBooks();
}
