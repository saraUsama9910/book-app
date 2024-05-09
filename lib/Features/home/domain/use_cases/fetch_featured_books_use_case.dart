
import 'package:book_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:book_app/Features/home/domain/entities/book_entity.dart';
import 'package:book_app/Features/home/domain/repos/home_repo.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/use_cases/no_param.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>>{
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(HomeRepoImpl homeRepoImpl, this.homeRepo);
  
  @override
  Future<Either<Failure, List<BookEntity>>> call()async {
    throw await homeRepo.fetchFeaturedBooks();
  }
  
 
  
  
  
  
 
 
}

