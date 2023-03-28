import 'package:bookly_app/features/main/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo _homeRepo;
  
  
  Future<void> fetchFeaturedBooks() async {
    emit(const FeaturedBooksLoading());
    var result = await _homeRepo.fetchFeaturedBooks();

    result.fold((books) {
      emit(FeaturedBooksSuccess(books));
    }, (failure) {
      emit(FeaturedBooksFailure(failure.errMessage));
    });
  }
}
