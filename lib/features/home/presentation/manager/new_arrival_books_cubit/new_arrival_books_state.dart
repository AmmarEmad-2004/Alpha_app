part of 'new_arrival_books_cubit.dart';

sealed class NewArrivalBooksState extends Equatable {
  const NewArrivalBooksState();

  @override
  List<Object> get props => [];
}

final class NewArrivalBooksInitial extends NewArrivalBooksState {}

final class NewArrivalBooksLoading extends NewArrivalBooksState {}

final class NewArrivalBooksSuccess extends NewArrivalBooksState {
  final List<BookModel> books;

  const NewArrivalBooksSuccess({required this.books});
}

final class NewArrivalBooksFailuer extends NewArrivalBooksState {
  final String message;

  const NewArrivalBooksFailuer({required this.message});
}
