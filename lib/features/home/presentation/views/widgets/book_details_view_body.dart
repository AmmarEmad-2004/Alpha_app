import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/core/widgets/custom_text_buttom.dart';
import 'package:alpha_app/features/home/data/models/book_model/book_model.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 34),
      child: Column(
        children: [
          BooksDetailsSection(bookModel: bookModel),
          SizedBox(height: 26),
          CustomTextButton(
            text: 'Preview',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            height: 55,
          ),
        ],
      ),
    );
  }
}
