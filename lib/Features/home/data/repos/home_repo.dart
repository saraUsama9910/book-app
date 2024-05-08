import 'package:book_app/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:book_app/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:book_app/Features/home/domain/entities/book_entity.dart';
import 'package:book_app/Features/home/domain/repos/home_repo.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRepoDataSource homeRepoDataSource;

  HomeRepoImp(
      {required this.homeLocalDataSource, required this.homeRepoDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var booksList = homeLocalDataSource.featchFeaturedBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRepoDataSource.featchFeaturedBooks();
      return right(books);
    } on Exception catch (e) {
      return left(
        Failure(),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
