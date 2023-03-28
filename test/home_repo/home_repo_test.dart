import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/main/data/models/book_model.dart';
import 'package:bookly_app/features/main/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'home_repo_test.mocks.dart';

@GenerateMocks([HomeRepo])
void main() {
  late HomeRepo mockHomeRepo;

  setUp(() {
    mockHomeRepo = MockHomeRepo();
  });
  group('home repo ...', () {
    group('fetch newest method', () {
      test('fetch Newest books method that return book model', () async {
        // arrange
        final bookModel = BookModel(kind: '', totalItems: 20, items: []);
        // act
        when(mockHomeRepo.fetchNewestBooks())
            .thenAnswer((_) async => left(bookModel));

        final data = await mockHomeRepo.fetchNewestBooks();
        // assert
        expect(data, left(bookModel));
      });

      test('fetch Newest books method that return Failure', () async {
        // arrange
        const failure = ServerFailure('Error');
        // act
        when(mockHomeRepo.fetchNewestBooks())
            .thenAnswer((_) async => right(failure));

        final data = await mockHomeRepo.fetchNewestBooks();
        // assert
        expect(data, right(failure));
      });
    });
  });

  group('fetch featured books', () {
    test('fetch featured books and return will be book model ', () async {
      // arrange
      final bookModel = BookModel(kind: '', totalItems: 20, items: []);
      // act
      when(mockHomeRepo.fetchFeaturedBooks())
          .thenAnswer((_) async => left(bookModel));

      var data = await mockHomeRepo.fetchFeaturedBooks();
      // assert
      expect(data, left(bookModel));
    });

    test('fetch featured books and return will be Failure ', () async {
      // arrange
      const failure = ServerFailure('Error');
      // act
      when(mockHomeRepo.fetchFeaturedBooks())
          .thenAnswer((_) async => right(failure));

      var data = await mockHomeRepo.fetchFeaturedBooks();
      // assert
      expect(data, right(failure));
    });
  });
}
