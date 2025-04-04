import 'package:alpha_app/core/errors/api_failuer.dart';
import 'package:alpha_app/core/errors/failuers.dart';
import 'package:alpha_app/features/home/data/models/book_model/book_model.dart';
import 'package:alpha_app/features/home/data/models/category_model/category_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuers, List<CategoryModel>>> getCategoryBooks();
  Future<Either<ApiFailure, List<BookModel>>> getBooksByCategory(
    String categoryName,
  );
  Future<Either<ApiFailure, List<BookModel>>> getNewArrivalsBooks();
}
