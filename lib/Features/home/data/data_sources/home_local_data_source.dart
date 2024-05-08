import 'package:book_app/Features/home/domain/entities/book_entity.dart';
import 'package:book_app/constants.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> featchFeaturedBooks();
  List<BookEntity> featchNewestBooks();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  @override
  List<BookEntity> featchFeaturedBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> featchNewestBooks() {
    // TODO: implement featchNewestBooks
    throw UnimplementedError();
  }
}
