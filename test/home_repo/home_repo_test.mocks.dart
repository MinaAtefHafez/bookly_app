// Mocks generated by Mockito 5.3.2 from annotations
// in bookly_app/test/home_repo/home_repo_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:bookly_app/core/errors/failures.dart' as _i6;
import 'package:bookly_app/features/main/data/models/book_model.dart' as _i5;
import 'package:bookly_app/features/main/data/repo/home_repo.dart' as _i3;
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [HomeRepo].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeRepo extends _i1.Mock implements _i3.HomeRepo {
  MockHomeRepo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.BookModel, _i6.Failure>> fetchNewestBooks() =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchNewestBooks,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.BookModel, _i6.Failure>>.value(
            _FakeEither_0<_i5.BookModel, _i6.Failure>(
          this,
          Invocation.method(
            #fetchNewestBooks,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.BookModel, _i6.Failure>>);
  @override
  _i4.Future<_i2.Either<_i5.BookModel, _i6.Failure>> fetchFeaturedBooks() =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchFeaturedBooks,
          [],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.BookModel, _i6.Failure>>.value(
            _FakeEither_0<_i5.BookModel, _i6.Failure>(
          this,
          Invocation.method(
            #fetchFeaturedBooks,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.BookModel, _i6.Failure>>);
}
