



import 'package:bookly_app/features/main/data/models/book_model.dart';
import 'package:bookly_app/features/main/data/repo/home_repo.dart';
import 'package:bookly_app/features/main/presentation/manager/newest_cubit/newest_cubit.dart';
import 'package:bookly_app/features/main/presentation/manager/newest_cubit/newest_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../home_repo/home_repo_test.mocks.dart';

void main () {

 late NewestCubit newestCubit ;
 late HomeRepo mockHomeRepo;

 setUp(() {
    mockHomeRepo = MockHomeRepo();
    newestCubit = NewestCubit(mockHomeRepo);
 });
  group ('newest books cubit' , (){
      test('fetch Newest Books and it will emit Newest Books Loading then Newest Books Success with  Book Model', () {
            // arrange
            BookModel bookModel = BookModel(kind: '', totalItems:20, items: []);
            when(mockHomeRepo.fetchNewestBooks()).thenAnswer((_) async => left(bookModel) );

            // assert
            final expectedStates = [
                 const NewestLoading(),
                 NewestSuccess(bookModel),
            ];

            expectLater(newestCubit.stream, emitsInAnyOrder(expectedStates));

            // act 

            newestCubit.fetchNewestBooks();
      });
  } );
}