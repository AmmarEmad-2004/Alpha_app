import 'package:alpha_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),

      bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: icon)],
      ),
    );
  }
}
