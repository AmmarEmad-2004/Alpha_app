import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/type_list_view.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: [TypeListView(), SizedBox(height: 24), BookListView()],
      ),
    );
  }
}

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return BookItem();
        },
      ),
    );
  }
}

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.red,
            ),
            child: Image.asset(
              'assets/images/test.png',
              height: 250,
              width: 160,
            ),
          ),
          Text(
            'Catcher in the Rye',
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
              color: Color(0xff333333),
            ),
          ),
          Text(
            'J.D. Salinger',
            style: Styles.textStyleReqular.copyWith(fontSize: 12),
          ),
          Text('P198.00', style: Styles.textStyleReqular),
        ],
      ),
    );
  }
}
