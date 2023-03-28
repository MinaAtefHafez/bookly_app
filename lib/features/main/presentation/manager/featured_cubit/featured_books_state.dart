import 'package:equatable/equatable.dart';

import 'package:bookly_app/features/main/data/models/book_model.dart';

abstract class FeaturedBooksState {
  const FeaturedBooksState() ;
}

class FeaturedBooksInitial extends FeaturedBooksState  {}

class FeaturedBooksLoading extends FeaturedBooksState  {
  const FeaturedBooksLoading();
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final BookModel bookModel;

  FeaturedBooksSuccess(this.bookModel);


  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FeaturedBooksSuccess &&
      other.bookModel == bookModel;
  }

  @override
  int get hashCode => bookModel.hashCode;
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksFailure(this.errMessage);
}
