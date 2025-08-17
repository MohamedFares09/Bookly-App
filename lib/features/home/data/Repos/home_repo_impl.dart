
import 'package:bookly_app/core/errors/faileur.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/Repos/home_repo.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, List<BookModel>>> getBestSellerBooks() async {
    try {
      dynamic data = await apiServices.get(endPoint: "volumes?q=Programing");
      
      List<BookModel> books = [];
      if (data["items"] != null) {
        for (var element in data["items"]) {
          books.add(BookModel.fromJson(element));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        handleDioException(e); // This will throw a Failure
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getBooks() async {
    try {
      dynamic data = await apiServices.get(endPoint: "volumes?q=Programing");
      List<BookModel> books = [];
      if (data["items"] != null) {
        for (var element in data["items"]) {
          books.add(BookModel.fromJson(element));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        handleDioException(e); // This will throw a Failure
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
