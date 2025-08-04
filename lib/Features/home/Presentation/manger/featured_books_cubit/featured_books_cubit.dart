import 'package:bloc/bloc.dart';
import 'package:clean_arch_booky_app/Features/home/Domain/entities/book_entity.dart';
import 'package:clean_arch_booky_app/Features/home/Domain/use_case/fetch_featured_books_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchFeaturedBooksUseCase)
    : super(FeaturedBooksInitial());
  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;
  Future<void> fetchFeaturedBooks(
    Future<List<BookEntity>> Function() fetchBooks,
  ) async {
    emit(FeaturedBooksLoading());

    var result = await fetchFeaturedBooksUseCase.call();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(errorMassage: failure.message));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
