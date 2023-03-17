import 'package:bookly_app/core/api_services/api_sevices.dart';
import 'package:bookly_app/features/main/data/models/book_model.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/main/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<BookModel, Failure>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?q=programming&Sorting=newest&Feltiring=free-ebooks');

      BookModel bookModel = BookModel.fromJson(data) ;
      


      return left(bookModel);
    } catch (e) {
      if (e is DioError) {
        return right(ServerFailure.fromDioError(e));
      }

      return right(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<BookModel, Failure>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              'volumes?q=programming&Feltiring=free-ebooks');

      BookModel bookModel = BookModel.fromJson(data);

      return left(bookModel);
    } catch (e) {
      if (e is DioError) {
        return right(ServerFailure.fromDioError(e));
      }

      return right(ServerFailure(e.toString()));
    }
  }
}
