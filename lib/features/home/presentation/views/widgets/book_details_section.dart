import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            BookItem(crossAxisAlignment: CrossAxisAlignment.center),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About the author',
                  style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'J.D. Salinger was an American writer, best known for his 1951 novel The Catcher in the Rye. Before its publi cation, Salinger published several short stories in Story magazine',
                  style: Styles.textStyleReqular.copyWith(fontSize: 14),
                ),
                SizedBox(height: 17),
                Text(
                  'Overview',
                  style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 9),
                Text(
                  'The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945The Catcher in the Rye is a novel by J. D. Salinger, partially published in serial form in 1945',
                  style: Styles.textStyleReqular.copyWith(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
