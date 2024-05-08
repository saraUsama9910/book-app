import 'package:book_app/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:book_app/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:book_app/Features/home/domain/entities/book_entity.dart';
import 'package:book_app/Features/home/domain/repos/home_repo.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRepoDataSource homeRepoDataSource;

  HomeRepoImpl(
      {required this.homeLocalDataSource, required this.homeRepoDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var books;
       books = homeLocalDataSource.featchFeaturedBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
       books = await homeRepoDataSource.featchFeaturedBooks();
      return right(books);
    } on Exception catch (e) {
      return left(
        Failure(),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var books;
      books = homeLocalDataSource.featchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRepoDataSource.featchNewestBooks();
      return right(books);
    } on Exception catch (e) {
      return left(
        Failure(),
      );
    }
  }
}
