import 'package:alpha_app/core/errors/api_failuer.dart';
import 'package:alpha_app/core/errors/failuers.dart';
import 'package:alpha_app/features/home/data/models/book_model/book_model.dart';
import 'package:alpha_app/features/home/data/models/book_model/category_model.dart';
import 'package:alpha_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoimple implements HomeRepo{
  @override
  Future<Either<ApiFailure, List<BookModel>>> getBooksByCategory(String categoryName) {
    // TODO: implement getBooksByCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<Failuers, List<CategoryModel>>> getCategoryBooks() async{
    try {
  List<CategoryModel> categories = [
      CategoryModel(categoryName: 'Fiction'),
      CategoryModel(categoryName: 'Science'),
      CategoryModel(categoryName: 'Literature'),
      CategoryModel(categoryName: 'History'),
      CategoryModel(categoryName: 'Business'),
      CategoryModel(categoryName: 'Technology'),
      CategoryModel(categoryName: 'Travel'),
      CategoryModel(categoryName: 'Health'),
    ];
    return Right(categories);
}  catch (e) {
  return Left(Failuers(message: 'Failed to fetch categories'));
}
  }

  @override
  Future<Either<ApiFailure, List<BookModel>>> getNewArrivalsBooks() {
    // TODO: implement getNewArrivalsBooks
    throw UnimplementedError();
  }
}