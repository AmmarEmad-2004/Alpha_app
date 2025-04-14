import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/core/widgets/error_message.dart';
import 'package:alpha_app/core/widgets/loading_widget.dart';

import 'package:alpha_app/features/home/presentation/manager/category_cubit/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          if (state is CategorySuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.categories.length,
              itemBuilder: (context, index) {
                final category = state.categories[index];
                final isSelected = category == state.selectedCategory;
                return GestureDetector(
                  onTap: () {
                    
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 36),
                    child: Text(
                      category.categoryName,
                      style:  isSelected
                            ? Styles.textStyle16.copyWith(color: Colors.blue) // تغيير اللون إذا كانت الفئة مختارة
                            : Styles.textStyle16,
                    ),
                  ),
                );
              },
            );
          } else if (state is CategoryFailuer) {
            return ErrorMessage(errMessage: state.message);
          } else {
            return const LoadingWidget();
          }
        },
      ),
    );
  }
}
