import 'package:alpha_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class NewArrivalsListVew extends StatelessWidget {
  const NewArrivalsListVew({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 6,
        childAspectRatio: .55,
      ),

      itemCount: 10,
      itemBuilder: (context, index) {
        return BookItem();
      },
    );
  }
}