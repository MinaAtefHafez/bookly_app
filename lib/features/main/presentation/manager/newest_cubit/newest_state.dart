import 'package:bookly_app/features/main/data/models/book_model.dart';

abstract class NewestState {
  const NewestState();
}

class NewestInitial extends NewestState {}

class NewestLoading extends NewestState {
  const NewestLoading();
}

class NewestSuccess extends NewestState {
  final BookModel books;

  NewestSuccess(this.books);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NewestSuccess &&
      other.books == books;
  }

  @override
  int get hashCode => books.hashCode;
}

class NewestFailure extends NewestState {
  final String errMessage;

  NewestFailure(this.errMessage);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NewestFailure &&
      other.errMessage == errMessage;
  }

  @override
  int get hashCode => errMessage.hashCode;
}
