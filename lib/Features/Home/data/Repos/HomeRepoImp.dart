import 'package:booklyapp/Features/Home/data/Repos/Home_Repo.dart';
import 'package:booklyapp/Features/Home/data/models/BookModel.dart';
import 'package:booklyapp/core/Utiels/Api_Services.dart';
import 'package:booklyapp/core/errors/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Homerepoimp implements HomeRepo {
  final ApiServices apiServices;

  Homerepoimp({required this.apiServices});
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestsellerBooks() async {
    try {
      var data = await apiServices.get(endpoint:'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');
      List<BookModel> books = [];
     for (var item in data['items']) {
       books.add(BookModel.fromJson(item));
     }
      return Right(books);
    }catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var data = await apiServices.get(endpoint:'volumes?Filtering=free-ebooks&q=subject:computer science');
      List<BookModel> books = [];
     for (var item in data['items']) {
      
  books.add(BookModel.fromJson(item));

     }
      return Right(books);
    }catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }


   @override
  Future<Either<Failure, List<BookModel>>> fetchImaesBooks({required String category}) async {
    try {
      var data = await apiServices.get(endpoint:'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:programming');
      List<BookModel> books = [];
     for (var item in data['items']) {
      
  books.add(BookModel.fromJson(item));

     }
      return Right(books);
    }catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
