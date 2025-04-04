import 'package:alpha_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TypeListView extends StatelessWidget {
  const TypeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 36),
            child: Text('Novel', style: Styles.textStyle16),
          );
        },
      ),
    );
  }
}
