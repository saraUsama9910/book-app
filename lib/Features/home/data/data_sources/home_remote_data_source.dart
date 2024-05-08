import 'package:book_app/Features/home/domain/entities/book_entity.dart';

abstract class HomeRepoDataSource{
  Future<List<BookEntity>>featchFeaturedBooks();
    Future<List<BookEntity>>featchNewestBooks();

}
class HomeRepoDataSourceImp extends HomeRepoDataSource{
  @override
  Future<List<BookEntity>> featchFeaturedBooks() {
    // TODO: implement featchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> featchNewestBooks() {
    // TODO: implement featchNewestBooks
    throw UnimplementedError();
  }
}