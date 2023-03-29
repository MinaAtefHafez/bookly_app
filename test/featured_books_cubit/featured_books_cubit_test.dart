import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/main/data/models/book_model.dart';
import 'package:bookly_app/features/main/data/repo/home_repo.dart';
import 'package:bookly_app/features/main/presentation/manager/featured_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/main/presentation/manager/featured_cubit/featured_books_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../home_repo/home_repo_test.mocks.dart';

void main() {
  late HomeRepo mockHomeRepo;
  late FeaturedBooksCubit featuredBooksCubit;

  setUp(() {
    mockHomeRepo = MockHomeRepo();
    featuredBooksCubit = FeaturedBooksCubit(mockHomeRepo);
  });
  group('featured books cubit', () {
    test(
        'fetch Featured Books and it will emit Featured Books Loading then Featured Books Success with  Book Model',
        () {
      // arrange
      final bookModel = BookModel(kind: '', totalItems: 20, items: []);
      when(mockHomeRepo.fetchFeaturedBooks())
          .thenAnswer((_) async => left(bookModel));

      // assert
      final expectedStates = [
        const FeaturedBooksLoading(),
        FeaturedBooksSuccess(bookModel),
      ];

      expectLater(featuredBooksCubit.stream, emitsInAnyOrder(expectedStates));
      // act

      featuredBooksCubit.fetchFeaturedBooks();
    });

    test(
        'fetch Featured Books and it will emit Featured Books Loading then Featured Books Failure with  error message',
        () {
      // arrange
      
      when(mockHomeRepo.fetchFeaturedBooks())
          .thenAnswer((_) async => right(const ServerFailure('error')));

      // assert
      final expectedStates = [
        const FeaturedBooksLoading(),
        FeaturedBooksFailure('error'),
      ];

      expectLater(featuredBooksCubit.stream, emitsInAnyOrder(expectedStates));
      // act

      featuredBooksCubit.fetchFeaturedBooks();
    });
  });
}
