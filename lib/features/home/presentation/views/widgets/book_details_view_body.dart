import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/core/widgets/custom_text_buttom.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 34),
      child: Column(
        children: [
          BooksDetailsSection(),
          SizedBox(height: 26),
          CustomTextButton(
            text: 'Add to Cart',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            height: 55,
          ),
        ],
      ),
    );
  }
}
