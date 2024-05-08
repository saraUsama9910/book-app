import 'package:book_app/Features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> featchFeaturedBooks();
  List<BookEntity> featchNewestBooks();
}
class HomeLocalDataSourceImp extends HomeLocalDataSource{
  @override
  List<BookEntity> featchFeaturedBooks() {
    // TODO: implement featchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> featchNewestBooks() {
    // TODO: implement featchNewestBooks
    throw UnimplementedError();
  }
}