import 'package:alpha_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
      child: Column(children: [CustomAppBar()]),
    );
  }
}


