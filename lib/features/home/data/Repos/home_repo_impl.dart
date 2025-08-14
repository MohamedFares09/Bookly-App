import 'package:bookly_app/core/errors/faileur.dart';
import 'package:bookly_app/features/home/data/Repos/home_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Faileur, BookModel>> getBestSellerBooks() { 
    // TODO: implement getBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Faileur, BookModel>> getBooks() {
    // TODO: implement getBooks
    throw UnimplementedError();
  }
}