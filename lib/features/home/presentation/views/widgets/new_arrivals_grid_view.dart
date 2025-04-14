import 'package:alpha_app/core/widgets/error_message.dart';
import 'package:alpha_app/core/widgets/loading_widget.dart';
import 'package:alpha_app/features/home/presentation/manager/new_arrival_books_cubit/new_arrival_books_cubit.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewArrivalsListVew extends StatelessWidget {
  const NewArrivalsListVew({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewArrivalBooksCubit, NewArrivalBooksState>(
      builder: (context, state) {
    if (state is NewArrivalBooksSuccess){
      final books = state.books;
       return SliverGrid.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 6,
            childAspectRatio: .55,
          ),

          itemCount: books.length,
          itemBuilder: (context, index) {
            return BookItem(bookModel: books[index],);
          },
        );
    }else if (state is NewArrivalBooksFailuer){
       return ErrorMessage(errMessage: state.message);
      }else{
        return LoadingWidget();
      }
    );
  }
}
