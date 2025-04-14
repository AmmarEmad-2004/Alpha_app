import 'package:alpha_app/core/di/auth_service_locator.dart';
import 'package:alpha_app/features/home/data/repos/home_repoimple.dart';
import 'package:alpha_app/features/home/presentation/manager/books_cubit/books_cubit.dart';
import 'package:alpha_app/features/home/presentation/manager/category_cubit/category_cubit.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/category_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksViewSection extends StatelessWidget {
  const BooksViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<BooksCubit>(
            create:
                (context) =>
                    BooksCubit(getIt.get<HomeRepoimple>())
                      ..getBooksByCategory("a"),
          ),
          BlocProvider(
            create:
                (context) =>
                    CategoryCubit(getIt.get<HomeRepoimple>())..getCategory(),
          ),
        ],
        child: Column(
          children: [CategoryListView(), SizedBox(height: 24), BooksListView()],
        ),
      ),
    );
  }
}
