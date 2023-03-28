

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repo/home_repo.dart';
import 'newest_state.dart';

class NewestCubit extends Cubit<NewestState> {
  NewestCubit(this._homeRepo) : super(NewestInitial());

  final HomeRepo _homeRepo;
  
  
  Future<void> fetchNewestBooks() async {
    emit(const NewestLoading());
    var result = await _homeRepo.fetchNewestBooks();

    result.fold((books) {
      emit(NewestSuccess(books));
    }, (failure) {
      emit(NewestFailure(failure.errMessage));
    });
  }
}
