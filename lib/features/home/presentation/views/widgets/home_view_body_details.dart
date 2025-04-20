import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/books_view_section.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/new_arrivals_grid_view.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeViewBodyDetails extends StatelessWidget {
  const HomeViewBodyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
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
              BooksViewSection(),
              SizedBox(height: 28),
              Text('New Arrivals', style: Styles.textStyle24),
              SizedBox(height: 10),
            ],
          ),
        ),
        NewArrivalsListView(),
      ],
    );
  }
}
