import 'package:alpha_app/core/utils/app_routers.dart';
import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.start, required this.bookModel,
  });
  final BookModel bookModel;
  final CrossAxisAlignment crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),

      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouters.bookDetailsView);
        },
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
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
      ),
    );
  }
}
