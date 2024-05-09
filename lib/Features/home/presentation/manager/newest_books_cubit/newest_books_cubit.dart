import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/domain/entities/book_entity.dart';
import 'package:book_app/Features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.newestBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestBooksUseCase newestBooksUseCase;
  Future<void> featchFeaturedBooks() async {
    emit(
      NewestBooksLoading(),
    );
    var result = await newestBooksUseCase.call();
    result.fold((failure) {
      emit(
        NewestBooksFailure(
          failure.message,
        ),
      );
    }, (books) {
      emit(
        NewestBooksSuccess(books),
      );
    });
  }
 
}
