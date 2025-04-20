import 'package:alpha_app/features/home/data/models/book_model/book_model.dart';
import 'package:alpha_app/features/home/data/repos/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit(this.homeRepo) : super(BooksInitial());

  final HomeRepo homeRepo;

  Future<void> getBooksByCategory(String categoryName) async {
    emit(BooksLoading());
     
 
    
    var result = await homeRepo.getBooksByCategory(categoryName);
    result.fold(
      (failuer) => emit(BooksFailuer(message: failuer.message)),
      (books) => emit(BooksSuccess(books: books)),
    );
  }
}
