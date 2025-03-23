import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          Text(
            'Hello, Ammar 👋🏻',
            style: Styles.textStyle20.copyWith(color: Colors.red),
            textAlign: TextAlign.start,
          ),
          Text(
            'What do you want to read today?',
            style: Styles.textStyle16.copyWith(color: Colors.black54),
          ),
          SizedBox(height: 34),
          SearchTextField(),
          SizedBox(height: 23),
          BooksListView(),
        ],
      ),
    );
  }
}




