import 'package:book_app/Features/home/domain/entities/book_entity.dart';
import 'package:book_app/Features/home/domain/repos/home_repo.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase( this.homeRepo);
  Future<Either<Failure, List<BookEntity>>> call() {
    return homeRepo.fetchFeaturedBooks();
  }
}
 