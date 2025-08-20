
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
      dynamic data = await apiServices.get(endPoint: "volumes?q=cumputer science");
      
      List<BookModel> books = [];
      if (data["items"] != null) {
        for (var element in data["items"]) {
          books.add(BookModel.fromJson(element));
        }
      }
      return right(books);
    } on DioException catch (e) { 
    return Left(handleDioException(e));  
  } catch (e) {
    return Left(ServerFailure("Unexpected error: $e"));
  }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getBooks() async {
    try {
      dynamic data = await apiServices.get(endPoint: "volumes?Filtering=free-ebooks&Sorting=newest&q=Programing");
      List<BookModel> books = [];
      if (data["items"] != null) {
        for (var element in data["items"]) {
          books.add(BookModel.fromJson(element));
        }
      }
      return right(books);
    }on DioException catch (e) {
    return Left(handleDioException(e));
  } catch (e) {
    return Left(ServerFailure("Unexpected error: $e"));
  }
  }
  
  @override
  Future<Either<Failure, List<BookModel>>> getSimilerBooks() async{
  try {
      dynamic data = await apiServices.get(endPoint: "volumes?Filtering=free-ebooks&Sorting=relevance&q=Programing");
      List<BookModel> books = [];
      if (data["items"] != null) {
        for (var element in data["items"]) {
          books.add(BookModel.fromJson(element));
        }
      }
      return right(books);
    }on DioException catch (e) {
    return Left(handleDioException(e));
  } catch (e) {
    return Left(ServerFailure("Unexpected error: $e"));
  }
  }
}
