import 'package:bookly_app/core/errors/faileur.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> getBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> getBooks();
}
