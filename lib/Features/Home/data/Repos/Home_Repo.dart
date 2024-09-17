import 'package:booklyapp/Features/Home/data/models/BookModel.dart';
import 'package:booklyapp/core/errors/Failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestsellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
  Future<Either<Failure, List<BookModel>>> fetchImaesBooks({required String category});
}
