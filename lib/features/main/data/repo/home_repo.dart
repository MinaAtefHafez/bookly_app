import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/main/data/models/book_model.dart';
import 'package:dartz/dartz.dart';




abstract class HomeRepo {
  Future<Either<BookModel, Failure>> fetchNewestBooks();
  Future<Either<BookModel, Failure>> fetchFeaturedBooks();
}