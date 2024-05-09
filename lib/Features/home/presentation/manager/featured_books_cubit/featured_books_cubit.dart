import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/domain/entities/book_entity.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
