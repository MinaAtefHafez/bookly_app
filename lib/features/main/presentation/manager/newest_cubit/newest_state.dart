import 'package:bookly_app/features/main/data/models/book_model.dart';

abstract class NewestState {}

class NewestInitial extends NewestState {}

class NewestLoading extends NewestState {}

class NewestSuccess extends NewestState {
  final BookModel books;

  NewestSuccess(this.books);
}

class NewestFailure extends NewestState {
  final String errMessage;

  NewestFailure(this.errMessage);
}
