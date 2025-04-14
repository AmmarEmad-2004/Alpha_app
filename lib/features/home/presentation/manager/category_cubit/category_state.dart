part of 'category_cubit.dart';

sealed class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

final class CategoryInitial extends CategoryState {}

final class CategoryLoading extends CategoryState {}

final class CategorySuccess extends CategoryState {
  final List<CategoryModel> categories;
  final CategoryModel? selectedCategory;

  const CategorySuccess({this.selectedCategory, required this.categories});
}

final class CategoryFailuer extends CategoryState {
  final String message;

  const CategoryFailuer({required this.message});
}
