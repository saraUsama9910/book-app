import 'dart:ffi';

import 'package:book_app/Features/home/domain/entities/book_entity.dart';
import 'package:book_app/Features/home/domain/repos/home_repo.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>,NoParam>{
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase({required this.homeRepo});
  
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param])async {
    throw await UnimplementedError();
  }
  
 
  
  
  
  
 
 
}

abstract class UseCase <Type,Param>{
  Future<Either<Failure,Type>> call([Param param]);
}
class NoParam{}