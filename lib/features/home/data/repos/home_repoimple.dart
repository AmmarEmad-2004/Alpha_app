import 'package:alpha_app/core/errors/api_failuer.dart';
import 'package:alpha_app/core/errors/failuers.dart';
import 'package:alpha_app/core/utils/api_service.dart';
import 'package:alpha_app/features/home/data/models/book_model/book_model.dart';
import 'package:alpha_app/features/home/data/models/category_model/category_model.dart';
import 'package:alpha_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoimple implements HomeRepo {
  final ApiService apiService;

  HomeRepoimple({required this.apiService});
  @override
  Future<Either<ApiFailure, List<BookModel>>> getBooksByCategory(
    String categoryName,
  ) async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q=subject:$categoryName&filter=full&maxResults=20',
      );

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failuers, List<CategoryModel>>> getCategoryBooks() async {
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
      return right(categories);
    } catch (e) {
      return left(Failuers(message: 'Failed to fetch categories'));
    }
  }

  @override
  Future<Either<ApiFailure, List<BookModel>>> getNewArrivalsBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q=books&filter=full&maxResults=20&orderBy=newest',
      );

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(message: e.toString()));
      }
    }
  }
}
