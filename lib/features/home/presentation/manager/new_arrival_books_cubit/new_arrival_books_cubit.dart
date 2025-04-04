import 'package:alpha_app/features/home/data/models/book_model/book_model.dart';
import 'package:alpha_app/features/home/data/repos/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'new_arrival_books_state.dart';

class NewArrivalBooksCubit extends Cubit<NewArrivalBooksState> {
  NewArrivalBooksCubit(this.homeRepo) : super(NewArrivalBooksInitial());
  final HomeRepo homeRepo;

  Future<void> getNewArrivalBooks() async {
    emit(NewArrivalBooksLoading());
    var result = await homeRepo.getNewArrivalsBooks();
    result.fold(
      (failuer) => emit(NewArrivalBooksFailuer(message: failuer.message)),
      (books) => emit(NewArrivalBooksSuccess(books: books)),
    );
  }
}
