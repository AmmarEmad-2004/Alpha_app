import 'package:alpha_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Expanded(
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
      ),
    );
  }
}
