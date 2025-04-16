import 'package:alpha_app/core/widgets/error_message.dart';
import 'package:alpha_app/core/widgets/loading_widget.dart';
import 'package:alpha_app/features/home/presentation/manager/books_cubit/books_cubit.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .4,
      child: BlocBuilder<BooksCubit, BooksState>(
        builder: (context, state) {
          if (state is BooksSuccess) {
            print("عدد الكتب: ${state.books.length}");
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return BookItem(bookModel: state.books[index]);
              },
            );
          } else if (state is BooksFailuer) {
            return ErrorMessage(errMessage: state.message);
          } else {
            return LoadingWidget();
          }
        },
      ),
    );
  }
}
