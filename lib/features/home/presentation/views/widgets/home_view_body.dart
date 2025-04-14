import 'package:alpha_app/core/di/auth_service_locator.dart';
import 'package:alpha_app/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:alpha_app/features/home/data/repos/home_repoimple.dart';
import 'package:alpha_app/features/home/presentation/manager/new_arrival_books_cubit/new_arrival_books_cubit.dart';
import 'package:alpha_app/features/home/presentation/views/widgets/home_view_body_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewArrivalBooksCubit(getIt.get<HomeRepoimple>()..getNewArrivalsBooks()),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 32),
        child: HomeViewBodyDetails(),
      ),
    );
  }
}
