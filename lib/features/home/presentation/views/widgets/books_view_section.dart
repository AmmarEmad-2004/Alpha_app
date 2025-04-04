import 'package:alpha_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/type_list_view.dart';
import 'package:flutter/material.dart';

class BooksViewSection extends StatelessWidget {
  const BooksViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: [TypeListView(), SizedBox(height: 24), BooksListView()],
      ),
    );
  }
}
