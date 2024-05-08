import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/domain/entities/book_entity.dart';
import 'package:book_app/core/utils/api_service.dart';

abstract class HomeRepoDataSource {
  Future<List<BookEntity>> featchFeaturedBooks();
  Future<List<BookEntity>> featchNewestBooks();
}

class HomeRepoDataSourceImp extends HomeRepoDataSource {
  final ApiService apiService;

  HomeRepoDataSourceImp(this.apiService);
  @override
  Future<List<BookEntity>> featchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = getBooksList(data);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
     List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(
        BookModel.fromJson(bookMap),
      );
    }
    return books;
  }

  @override
  Future<List<BookEntity>> featchNewestBooks() {
    // TODO: implement featchNewestBooks
    throw UnimplementedError();
  }
}
