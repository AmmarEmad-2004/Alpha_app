import 'package:alpha_app/features/home/data/models/category_model/category_model.dart';
import 'package:alpha_app/features/home/data/repos/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.homeRepo) : super(CategoryInitial());
  final HomeRepo homeRepo;
   CategoryModel? selectedCategory;

  Future<void> getCategory() async {
    emit(CategoryLoading());
    var result = await homeRepo.getCategoryBooks();
    result.fold(
      (failuer) => emit(CategoryFailuer(message: failuer.message)),
      (categories) => emit(CategorySuccess(categories: categories)),
    );
  }

  void selectCatecory(CategoryModel category) {
    selectedCategory = category;
    emit(
      CategorySuccess(
        categories: (state as CategorySuccess).categories,
        selectedCategory: selectedCategory,
      ),
    );
  }
}
